# PSSailpointBeta.PSSailpointBeta/Api.BetaOrgConfigApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaOrgConfig**](BetaOrgConfigApi.md#Get-BetaOrgConfig) | **GET** /org-config | Get Org configuration settings
[**Get-BetaValidTimeZones**](BetaOrgConfigApi.md#Get-BetaValidTimeZones) | **GET** /org-config/valid-time-zones | Get list of time zones
[**Update-BetaOrgConfig**](BetaOrgConfigApi.md#Update-BetaOrgConfig) | **PATCH** /org-config | Patch an Org configuration property


<a name="Get-BetaOrgConfig"></a>
# **Get-BetaOrgConfig**
> OrgConfig Get-BetaOrgConfig<br>

Get Org configuration settings

Get org configuration with only external (org admin) accessible properties for the current org.

### Example
```powershell

# Get Org configuration settings
try {
    $Result = Get-BetaOrgConfig
} catch {
    Write-Host ("Exception occurred when calling Get-BetaOrgConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OrgConfig**](OrgConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaValidTimeZones"></a>
# **Get-BetaValidTimeZones**
> String[] Get-BetaValidTimeZones<br>

Get list of time zones

Get a list of valid time zones that can be set in org configurations.

### Example
```powershell

# Get list of time zones
try {
    $Result = Get-BetaValidTimeZones
} catch {
    Write-Host ("Exception occurred when calling Get-BetaValidTimeZones: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String[]**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaOrgConfig"></a>
# **Update-BetaOrgConfig**
> OrgConfig Update-BetaOrgConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Patch an Org configuration property

Patch configuration of the current org using http://jsonpatch.com/ syntax.  Commonly used for changing the time zone of an org.

### Example
```powershell
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of schema attribute update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

# Patch an Org configuration property
try {
    $Result = Update-BetaOrgConfig -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-BetaOrgConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of schema attribute update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. | 

### Return type

[**OrgConfig**](OrgConfig.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

