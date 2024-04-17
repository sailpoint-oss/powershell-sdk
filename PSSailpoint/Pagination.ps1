function Invoke-Paginate {

    [CmdletBinding()]
    Param(
        [Parameter(Position = 0, Mandatory = $true)]
        [string]$Function,
        [Int32]$InitialOffset = 0,
        [Int32]$Increment = 250,
        [Int32]$Limit = 10000,
        [hashtable]$Parameters,
        [Switch]$WithHttpInfo

    )
    Write-Debug ($Parameters | Out-String) 
    
    if ($WithHttpInfo.IsPresent) {
        $Results = [PSCustomObject]@{
            Response   = New-Object System.Collections.ArrayList($Limit)
            StatusCode = $null
            Headers    = $null
        };
    }

    try {
        while ($InitialOffset -lt $Limit) {
            $Command = "$Function -Limit $Increment -Offset $InitialOffset -WithHttpInfo @Parameters"
            $Result = Invoke-Expression $Command

            $Count = $Result.Response.Length
            Write-Debug "Retrieved $Count Results"

            if ($WithHttpInfo.IsPresent) {
                $Results.Response.AddRange($Result.Response)
                $Results.StatusCode = $Result.StatusCode
                $Results.Headers = $Result.Headers
            }
            else {
                Write-Output $Result.Response
            }

            if ($Result.Response.Length -lt $Increment) {
                break
            }

            $InitialOffset += $Increment;
        }

        if ($WithHttpInfo.IsPresent) {
            return $Results
        }
    }
    catch {
        Write-Host $_
        Write-Host ("Exception occurred when calling {1}: {0}" -f ($_.ErrorDetails | ConvertFrom-Json), $Function)
        Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
    }
}


function Invoke-PaginateSearch {

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $false)]
        [ValidateNotNull()]
        [ValidateScript({ ($_.sort | Measure-Object).Count -eq 1 }, 
            ErrorMessage = "Error! The required `Search` parameter must include exactly one sort parameter to paginate properly.")]
        [PSCustomObject]
        $Search,
        [Int32]$Increment = 250,
        [Int32]$Limit = 10000,
        [Switch]$WithHttpInfo
    )
        
    Write-Debug ($Parameters | Out-String) 
    $InitialOffset = 0
    
    $Results = [PSCustomObject]@{
        Response   = New-Object System.Collections.ArrayList($Limit)
        StatusCode = $null
        Headers    = $null
    };
    $first = $true

    try {
        while ($InitialOffset -lt $Limit) {
            
            if (-not $first) {
                $SearchSort = $Search.Sort[0]
                $SortTrimmed = $SearchSort.Trim("+", "-")
                $SearchAfter = $Result.Response[-1].$SortTrimmed
                $Search.SearchAfter = @($SearchAfter)
                Write-Debug "SearchAfter=$SearchAfter"
            }
            
            $Result = Search-Post -Limit $Increment -Search $Search -WithHttpInfo
            
            $Count = $Result.Response.Length
            Write-Debug "Retrieved $Count Results"
            
            if ($WithHttpInfo.IsPresent) {
                $Results.Response.AddRange($Result.Response)
                $Results.StatusCode = $Result.StatusCode
                $Results.Headers = $Result.Headers
            }
            else {
                Write-Output $Result.Response
            }
            
            if ($Result.Response.Length -lt $Increment) {
                break
            }
            
            $InitialOffset += $Increment;
            $first = $false
        } # End of while

        if ($WithHttpInfo.IsPresent) {
            return $Results
        }
    }
    catch {
        Write-Host $_
        Write-Host ("Exception occurred when calling {1}: {0}" -f ($_.ErrorDetails | ConvertFrom-Json), $Function)
        Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
    }
}