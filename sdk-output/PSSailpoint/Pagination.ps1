function Paginate {

    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $true)]
        [string]$Function,
        [System.Nullable[Int32]]$InitialOffset,
        [System.Nullable[Int32]]$Increment,
        [System.Nullable[Int32]]$Limit,
        [hashtable]$Parameters

    )

    Write-Debug ($Parameters | Out-String) 
    
    $Results = $null;

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
            $Command = "$Function -Limit $Increment -Offset $InitialOffset @Parameters"
            $Result = Invoke-Expression $Command

            $Count = $Result.Length
            Write-Debug "Retrieved $Count Results"

            if($Result.Length -lt $Increment) {
                break
            }

            $Results += $Result
            $InitialOffset += $Increment;
        }

        return $Results
    } catch {
        Write-Host $_
        Write-Host ("Exception occurred when calling {1}: {0}" -f ($_.ErrorDetails | ConvertFrom-Json), $Function)
        Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
    }
}


function Paginate-Search {

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $false)]
        [PSCustomObject]
        ${Search},
        [System.Nullable[Int32]]$InitialOffset,
        [System.Nullable[Int32]]$Increment,
        [System.Nullable[Int32]]$Limit
    )

    Write-Debug ($Parameters | Out-String) 
    
    $Results = $null;

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

            if ($Results.Length -gt 0) {
                $SearchSort = $Search.Sort[0]
                $Sort = $SearchSort.Trim("+")
                $SortTrimmed = $Sort.Trim("-")
                $LastRecord = $Results[-1].psObject.properties[$SortTrimmed].value


                $SearchAfter = $Results[-1].psObject.properties[$SortTrimmed].value

                $Search.SearchAfter = @($SearchAfter)
            }

            $Result = Search-Post -Limit $Increment -Search $Search

            $Count = $Result.Length
            Write-Debug "Retrieved $Count Results"

            if($Result.Length -lt $Increment) {
                break
            }

            $Results += $Result
            $InitialOffset += $Increment;
        }

        return $Results
    } catch {
        Write-Host $_
        Write-Host ("Exception occurred when calling {1}: {0}" -f ($_.ErrorDetails | ConvertFrom-Json), $Function)
        Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
    }
}