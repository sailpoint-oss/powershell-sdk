$Proxy = New-Object System.Net.WebProxy("https://test.proxy.com:8080")

Set-DefaultConfiguration -Proxy $Proxy

$Json = @"
{
	"indices": [
		"identities"
	],
	"query": {
		"query": "*",
		"fields": [
		"name"
		]
	}
	}
"@

$Search = ConvertFrom-JsonToSearch -Json $Json

try {
    Search-Post -Search $Search -WithHttpInfo
} catch {
	Write-Host $_
    Write-Host ("Exception occurred when calling Search-Post: {0}" -f $_.ErrorDetails)
    Write-Host ("Response headers: {0}" -f $_.Exception.Response.Headers)
}