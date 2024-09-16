# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaApprovalsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaApproval**](BetaApprovalsApi.md#Get-BetaApproval) | **GET** /generic-approvals/{id} | Get an approval
[**Get-BetaApprovals**](BetaApprovalsApi.md#Get-BetaApprovals) | **GET** /generic-approvals | Get Approvals
[**Update-BetaApproval**](BetaApprovalsApi.md#Update-BetaApproval) | **PATCH** /generic-approvals/{id} | Change an approval


<a id="Get-BetaApproval"></a>
# **Get-BetaApproval**
> Approval Get-BetaApproval<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get an approval

Retrieve a single approval for a given approval ID. This endpoint is for generic approvals, different than the access-request-approval endpoint and does not include access-request-approvals.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "38453251-6be2-5f8f-df93-5ce19e295837" # String | ID of the approval that is to be returned

# Get an approval
try {
    $Result = Get-BetaApproval -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaApproval: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the approval that is to be returned | 

### Return type

[**Approval**](Approval.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaApprovals"></a>
# **Get-BetaApprovals**
> Approval[] Get-BetaApprovals<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Mine] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-RequesterId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

Get Approvals

Retrieve a list of approvals, which can be filtered by requester ID, status, or reference type. ""Mine"" query parameter can be used and it will return all approvals for the current approver. This endpoint is for generic approvals, different than the access-request-approval endpoint and does not include access-request-approvals.  Absence of all query parameters will will default to mine=true.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Mine = $true # Boolean | Returns the list of approvals for the current caller (optional)
$RequesterId = "17e633e7d57e481569df76323169deb6a" # String | Returns the list of approvals for a given requester ID (optional)
$Filters = "filters=status eq PENDING" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **status**: *eq*  **referenceType**: *eq* (optional)

# Get Approvals
try {
    $Result = Get-BetaApprovals -Mine $Mine -RequesterId $RequesterId -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaApprovals: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Mine** | **Boolean**| Returns the list of approvals for the current caller | [optional] 
 **RequesterId** | **String**| Returns the list of approvals for a given requester ID | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **status**: *eq*  **referenceType**: *eq* | [optional] 

### Return type

[**Approval[]**](Approval.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaApproval"></a>
# **Update-BetaApproval**
> Approval Update-BetaApproval<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ApprovalDto] <PSCustomObject><br>

Change an approval

Change the values of a given approval

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ApprovalIdentity = Initialize-ApprovalIdentity -Id "85d173e7d57e496569df763231d6deb6a" -Type "IDENTITY" -Name "John Doe"
$ApprovalDto = Initialize-ApprovalDto -Comments  -ApprovedBy $ApprovalIdentity -RejectedBy $ApprovalIdentity -ReassignFrom $ApprovalIdentity -ReassignTo $ApprovalIdentity -AdditionalAttributes # ApprovalDto | 

# Change an approval
try {
    $Result = Update-BetaApproval -ApprovalDto $ApprovalDto
} catch {
    Write-Host ("Exception occurred when calling Update-BetaApproval: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ApprovalDto** | [**ApprovalDto**](ApprovalDto.md)|  | 

### Return type

[**Approval**](Approval.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

