$Json = @"
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

$Search1 = ConvertFrom-JsonToSearch1 -Json $Json

try {
    Search-Post -Search1 $Search1
} catch {
    Write-Host ("Exception occurred when calling Search-Post: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}