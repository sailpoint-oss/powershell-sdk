# Splits the Path of a generic request into the request URI and its query
# parameters. Path is everything after the tenant base URL, including the API
# version, for example 'accounts/v1' or 'sources/v1/2c918085/schemas'. Leading and
# trailing slashes are optional. Each segment is URL-encoded on its own, so the
# slashes between segments are kept. Anything after a '?' is returned as query
# parameters, for example 'accounts/v1?detailLevel=SLIM'.
function ConvertTo-GenericRequestPath {
    Param (
        [Parameter(Mandatory = $true)]
        [String]
        $Path
    )
    $PathPart, $QueryPart = $Path -split '\?', 2
    $Segments = @($PathPart -split '/' | Where-Object { $_ -ne '' } | ForEach-Object { [System.Uri]::EscapeDataString($_) })
    $Query = @{}
    if ($QueryPart) {
        $Parsed = [System.Web.HttpUtility]::ParseQueryString($QueryPart)
        foreach ($Key in $Parsed.AllKeys) {
            if ($null -ne $Key) {
                $Query[$Key] = $Parsed[$Key]
            }
        }
    }
    return @{ Uri = '/' + ($Segments -join '/'); Query = $Query }
}
