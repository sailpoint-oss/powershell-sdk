function Invoke-Paginate {

    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $true)]
        [string]$Function,
        [System.Nullable[Int32]]$InitialOffset,
        [System.Nullable[Int32]]$Increment,
        [System.Nullable[Int32]]$Limit,
        [hashtable]$Parameters,
        [Switch]$WithHttpInfo

    )

    Write-Debug ($Parameters | Out-String) 
    
    $Results = @{
        Response = @()
        StatusCode = $null
        Headers = $null
    };

    if($null -eq $InitialOffset) {
        $InitialOffset = 0
    }

    if($null -eq $Limit) {
        $Limit = 10000
    }

    if($null -eq $Increment) {
        $Increment = 250
    }

    try {
        while($InitialOffset -lt $Limit) {
            $Command = "$Function -Limit $Increment -Offset $InitialOffset -WithHttpInfo @Parameters"
            $Result = Invoke-Expression $Command

            $Count = $Result.Response.Length
            Write-Debug "Retrieved $Count Results"

            $Results.Response += $Result.Response
            $Results.StatusCode = $Result.StatusCode
            $Results.Headers = $Result.Headers
            
            if($Result.Response.Length -lt $Increment) {
                break
            }

            $InitialOffset += $Increment;
        }

        if ($WithHttpInfo.IsPresent) {
            return $Results
        } else {
            return $Results.Response
        }
    } catch {
        Write-Host $_
        Write-Host ("Exception occurred when calling {1}: {0}" -f ($_.ErrorDetails | ConvertFrom-Json), $Function)
        Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
    }
}


function Invoke-PaginateSearch {

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $false)]
        [PSCustomObject]
        ${Search},
        [System.Nullable[Int32]]$InitialOffset,
        [System.Nullable[Int32]]$Increment,
        [System.Nullable[Int32]]$Limit,
        [Switch]$WithHttpInfo
    )

    Write-Debug ($Parameters | Out-String) 
    
    $Results = @{
        Response = @()
        StatusCode = $null
        Headers = $null
    };

    if($null -eq $InitialOffset) {
        $InitialOffset = 0
    }

    if($null -eq $Limit) {
        $Limit = 10000
    }

    if($null -eq $Increment) {
        $Increment = 250
    }

    if($null -eq $Search) {
        throw "Error! The required parameter `Search` missing when calling Paginate-Search."
    }

    if($null -eq $Search.Sort) {
        throw "Error! The required `Search` parameter must include exactly one sort parameter to paginate properly."

    }

    if($Search.Sort.Length -ne 1) {
        throw "Error! The required `Search` parameter must include exactly one sort parameter to paginate properly."
    }

    try {
        while($InitialOffset -lt $Limit) {
            $SearchAfter = $Search.SearchAfter

            if ($Results.Response.Length -gt 0) {
                $SearchSort = $Search.Sort[0]
                $Sort = $SearchSort.Trim("+")
                $SortTrimmed = $Sort.Trim("-")
                $LastRecord = $Results.Response[-1].psObject.properties[$SortTrimmed].value


                $SearchAfter = $Results.Response[-1].psObject.properties[$SortTrimmed].value

                $Search.SearchAfter = @($SearchAfter)
            }

            $Result = Search-Post -Limit $Increment -Search $Search -WithHttpInfo

            $Count = $Result.Response.Length
            Write-Debug "Retrieved $Count Results"

            $Results.Response += $Result.Response
            $Results.StatusCode = $Result.StatusCode
            $Results.Headers = $Result.Headers

            if($Result.Response.Length -lt $Increment) {
                break
            }

            $InitialOffset += $Increment;
        }

        if ($WithHttpInfo.IsPresent) {
            return $Results
        } else {
            return $Results.Response
        }
    } catch {
        Write-Host $_
        Write-Host ("Exception occurred when calling {1}: {0}" -f ($_.ErrorDetails | ConvertFrom-Json), $Function)
        Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
    }
}