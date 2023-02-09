
$Parameters = @{
    "Filters" = 'name co "Andrew"'
}

# Accounts List
try {

    Paginate -Function "Get-Accounts" -Increment 250 -Limit 1000 -InitialOffset 0 -Parameters $Parameters

} catch {
    Write-Host $_
    Write-Host ("Exception occurred when calling {1}: {0}" -f ($_.ErrorDetails | ConvertFrom-Json), "Get-Accounts")
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}