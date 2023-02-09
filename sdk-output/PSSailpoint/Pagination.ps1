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
            $Results += Invoke-Expression $Command
            $InitialOffset += $Increment;
        }

        return $Results
    } catch {
        Write-Host $_
        Write-Host ("Exception occurred when calling {1}: {0}" -f ($_.ErrorDetails | ConvertFrom-Json), $Function)
        Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
    }
}
