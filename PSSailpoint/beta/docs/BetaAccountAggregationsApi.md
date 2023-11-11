# PSSailpointBeta.PSSailpointBeta/Api.BetaAccountAggregationsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaAccountAggregationStatus**](BetaAccountAggregationsApi.md#Get-BetaAccountAggregationStatus) | **GET** /account-aggregations/{id}/status | In-progress Account Aggregation status


<a name="Get-BetaAccountAggregationStatus"></a>
# **Get-BetaAccountAggregationStatus**
> AccountAggregationStatus Get-BetaAccountAggregationStatus<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

In-progress Account Aggregation status

This API returns the status of an *in-progress* account aggregation, along with the total number of **NEW**, **CHANGED** and **DELETED** accounts found since the previous aggregation, and the number of those accounts that have been processed so far.  Accounts that have not changed since the previous aggregation are not included in **totalAccounts** and **processedAccounts** counts returned by this API. This is distinct from **Accounts Scanned** shown in the Aggregation UI, which indicates total accounts scanned regardless of whether they changed or not.  Since this endpoint reports on the status of an *in-progress* account aggregation, totalAccounts and processedAccounts may change between calls to this endpoint.  *Only available up to an hour after the aggregation completes. May respond with *404 Not Found* after that.*  A token with ORG_ADMIN, SOURCE_ADMIN, SOURCE_SUBADMIN or DASHBOARD authority is required to call this API.

### Example
```powershell
$Id = "2c91808477a6b0c60177a81146b8110b" # String | The account aggregation id

# In-progress Account Aggregation status
try {
    $Result = Get-BetaAccountAggregationStatus -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaAccountAggregationStatus: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The account aggregation id | 

### Return type

[**AccountAggregationStatus**](AccountAggregationStatus.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

