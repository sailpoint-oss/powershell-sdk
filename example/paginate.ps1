
$JSON = @"
{
	"indices": [
		"identities"
	],
	"query": {
		"query": "\"philip.ellis\"",
		"fields": [
		"name"
		]
	}
	}
"@

$Search1 = ConvertFrom-JsonToSearch1 -Json $JSON

$Parameters = @{
    "Search1" = $Search1
}

# Accounts List
try {

    Paginate -Function "Search-Post" -Increment 5 -Limit 5 -Offset 0 -Parameters $Parameters

} catch {
    Write-Host $_
    Write-Host ("Exception occurred when calling {1}: {0}" -f ($_.ErrorDetails | ConvertFrom-Json), "Search-Post")
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}