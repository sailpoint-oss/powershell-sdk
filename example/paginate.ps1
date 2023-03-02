
$JSON = @"
{
	"indices": [
		"identities"
	],
	"query": {
		"query": "*",
		"fields": [
		"name"
		]
	},
	"sort": [
		"-displayName"
	]
	}
"@

$Search = ConvertFrom-JsonToSearch -Json $JSON

try {

    Invoke-PaginateSearch -Increment 50 -Limit 10000 -Search $Search

} catch {
    Write-Host $_
    Write-Host ("Exception occurred when calling {1}: {0}" -f ($_.ErrorDetails | ConvertFrom-Json), "Paginate-Search")
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}