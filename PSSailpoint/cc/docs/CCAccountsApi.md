# PSSailpointCC.PSSailpointCC/Api.CCAccountsApi

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-CCAccounts**](CCAccountsApi.md#Get-CCAccounts) | **GET** /cc/api/account/list | List Accounts
[**Remove-CCAccount**](CCAccountsApi.md#Remove-CCAccount) | **POST** /cc/api/account/remove/{id} | Remove Account


<a name="Get-CCAccounts"></a>
# **Get-CCAccounts**
> ListAccounts200ResponseInner[] Get-CCAccounts<br>

List Accounts

### Example
```powershell

# List Accounts
try {
    $Result = Get-CCAccounts
} catch {
    Write-Host ("Exception occurred when calling Get-CCAccounts: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListAccounts200ResponseInner[]**](ListAccounts200ResponseInner.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-CCAccount"></a>
# **Remove-CCAccount**
> void Remove-CCAccount<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Remove Account

### Example
```powershell
$Id = "12345" # String | 

# Remove Account
try {
    $Result = Remove-CCAccount -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-CCAccount: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

