# Create transform
$Transform = @{
    "name" = "New Transform"
    "type" = "lookup"
    "attributes" = @{
        "table" = @{
            "USA" = "Americas"
            "FRA" = "EMEA"
            "AUS" = "APAC"
            "default" = "Unknown Region"
        }
    }
}

 try {
    New-Transform -Transform $Transform
} catch {
    Write-Host ("Exception occurred when calling New-Transform: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}