# Perform Search

$Parameters = @{
    "Search1" = @{"query" = @{ "query" = "name:a*"}}
    "Offset" = 0
    "Limit" = 10

}

try {
    Search-Post @Parameters
} catch {
    Write-Host ("Exception occurred when calling Search-Post: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}