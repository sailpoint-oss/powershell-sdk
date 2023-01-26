# PSSailpointV2.PSSailpointV2/Api.V2GovernanceGroupsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V2BulkDeleteWorkGroups**](V2GovernanceGroupsApi.md#Invoke-V2BulkDeleteWorkGroups) | **POST** /workgroups/bulk-delete | Bulk delete work groups
[**New-V2Workgroup**](V2GovernanceGroupsApi.md#New-V2Workgroup) | **POST** /workgroups | Create Work Group
[**Invoke-V2DeleteWorkgroup**](V2GovernanceGroupsApi.md#Invoke-V2DeleteWorkgroup) | **DELETE** /workgroups/{workgroupId} | Delete Work Group By Id
[**Get-V2Workgroup**](V2GovernanceGroupsApi.md#Get-V2Workgroup) | **GET** /workgroups/{workgroupId} | Get Work Group By Id
[**Invoke-V2ListWorkgroupConnections**](V2GovernanceGroupsApi.md#Invoke-V2ListWorkgroupConnections) | **GET** /workgroups/{workgroupId}/connections | List Work Group Connections
[**Invoke-V2ListWorkgroupMembers**](V2GovernanceGroupsApi.md#Invoke-V2ListWorkgroupMembers) | **GET** /workgroups/{workgroupId}/members | List Work Group Members
[**Invoke-V2ListWorkgroups**](V2GovernanceGroupsApi.md#Invoke-V2ListWorkgroups) | **GET** /workgroups | List Work Groups
[**Edit-V2WorkgroupMembers**](V2GovernanceGroupsApi.md#Edit-V2WorkgroupMembers) | **POST** /workgroups/{workgroupId}/members | Modify Work Group Members
[**Update-V2Workgroup**](V2GovernanceGroupsApi.md#Update-V2Workgroup) | **PATCH** /workgroups/{workgroupId} | Update Work Group By Id


<a name="Invoke-V2BulkDeleteWorkGroups"></a>
# **Invoke-V2BulkDeleteWorkGroups**
> BulkDeleteWorkGroups200Response Invoke-V2BulkDeleteWorkGroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BulkDeleteWorkGroupsRequest] <PSCustomObject><br>

Bulk delete work groups

This API allows you to bulk-delete work groups

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$BulkDeleteWorkGroupsRequest = Initialize-BulkDeleteWorkGroupsRequest -Ids "868edef1-222b-40e4-8787-b56cfd78b100" # BulkDeleteWorkGroupsRequest | Work group ids to delete

# Bulk delete work groups
try {
    $Result = Invoke-V2BulkDeleteWorkGroups -BulkDeleteWorkGroupsRequest $BulkDeleteWorkGroupsRequest
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2BulkDeleteWorkGroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BulkDeleteWorkGroupsRequest** | [**BulkDeleteWorkGroupsRequest**](BulkDeleteWorkGroupsRequest.md)| Work group ids to delete | 

### Return type

[**BulkDeleteWorkGroups200Response**](BulkDeleteWorkGroups200Response.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-V2Workgroup"></a>
# **New-V2Workgroup**
> ListWorkgroups200ResponseInner[] New-V2Workgroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateWorkgroupRequest] <PSCustomObject><br>

Create Work Group

This API allows you to create a work group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$CreateWorkgroupRequestOwner = Initialize-CreateWorkgroupRequestOwner -Id "2c9180867624cbd7017642d8c8c81f67"
$CreateWorkgroupRequest = Initialize-CreateWorkgroupRequest -Name "Test group 3" -Description "This is a test" -Owner $CreateWorkgroupRequestOwner # CreateWorkgroupRequest | Work group to create.

# Create Work Group
try {
    $Result = New-V2Workgroup -CreateWorkgroupRequest $CreateWorkgroupRequest
} catch {
    Write-Host ("Exception occurred when calling New-V2Workgroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **CreateWorkgroupRequest** | [**CreateWorkgroupRequest**](CreateWorkgroupRequest.md)| Work group to create. | 

### Return type

[**ListWorkgroups200ResponseInner[]**](ListWorkgroups200ResponseInner.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-V2DeleteWorkgroup"></a>
# **Invoke-V2DeleteWorkgroup**
> void Invoke-V2DeleteWorkgroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkgroupId] <String><br>

Delete Work Group By Id

This API deletes a single workgroup based on the ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$WorkgroupId = "ef38f94347e94562b5bb8424a56397d8" # String | The workgroup ID

# Delete Work Group By Id
try {
    $Result = Invoke-V2DeleteWorkgroup -WorkgroupId $WorkgroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2DeleteWorkgroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkgroupId** | **String**| The workgroup ID | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-V2Workgroup"></a>
# **Get-V2Workgroup**
> ListWorkgroups200ResponseInner Get-V2Workgroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkgroupId] <String><br>

Get Work Group By Id

This API returns the details for a single workgroup based on the ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$WorkgroupId = "ef38f94347e94562b5bb8424a56397d8" # String | The workgroup ID

# Get Work Group By Id
try {
    $Result = Get-V2Workgroup -WorkgroupId $WorkgroupId
} catch {
    Write-Host ("Exception occurred when calling Get-V2Workgroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkgroupId** | **String**| The workgroup ID | 

### Return type

[**ListWorkgroups200ResponseInner**](ListWorkgroups200ResponseInner.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-V2ListWorkgroupConnections"></a>
# **Invoke-V2ListWorkgroupConnections**
> ListWorkgroupConnections200ResponseInner[] Invoke-V2ListWorkgroupConnections<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkgroupId] <String><br>

List Work Group Connections

This API returns the connections of a work group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$WorkgroupId = "ef38f94347e94562b5bb8424a56397d8" # String | The workgroup ID

# List Work Group Connections
try {
    $Result = Invoke-V2ListWorkgroupConnections -WorkgroupId $WorkgroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2ListWorkgroupConnections: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkgroupId** | **String**| The workgroup ID | 

### Return type

[**ListWorkgroupConnections200ResponseInner[]**](ListWorkgroupConnections200ResponseInner.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-V2ListWorkgroupMembers"></a>
# **Invoke-V2ListWorkgroupMembers**
> ListWorkgroupMembers200ResponseInner[] Invoke-V2ListWorkgroupMembers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkgroupId] <String><br>

List Work Group Members

This API returns the members of a work group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$WorkgroupId = "ef38f94347e94562b5bb8424a56397d8" # String | The workgroup ID

# List Work Group Members
try {
    $Result = Invoke-V2ListWorkgroupMembers -WorkgroupId $WorkgroupId
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2ListWorkgroupMembers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkgroupId** | **String**| The workgroup ID | 

### Return type

[**ListWorkgroupMembers200ResponseInner[]**](ListWorkgroupMembers200ResponseInner.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Invoke-V2ListWorkgroups"></a>
# **Invoke-V2ListWorkgroups**
> ListWorkgroups200ResponseInner[] Invoke-V2ListWorkgroups<br>

List Work Groups

This API returns a list of work groups

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List Work Groups
try {
    $Result = Invoke-V2ListWorkgroups
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2ListWorkgroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListWorkgroups200ResponseInner[]**](ListWorkgroups200ResponseInner.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Edit-V2WorkgroupMembers"></a>
# **Edit-V2WorkgroupMembers**
> void Edit-V2WorkgroupMembers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkgroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ModifyWorkgroupMembersRequest] <PSCustomObject><br>

Modify Work Group Members

This API allows you to modify the members of a work group

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$WorkgroupId = "ef38f94347e94562b5bb8424a56397d8" # String | The workgroup ID
$ModifyWorkgroupMembersRequest = Initialize-ModifyWorkgroupMembersRequest -Add "2c9180867624cbd7017642d8c8c81f67" -Remove "2c9180867624cbd7017642d8c8c81f67" # ModifyWorkgroupMembersRequest | Add/Remove workgroup member ids.

# Modify Work Group Members
try {
    $Result = Edit-V2WorkgroupMembers -WorkgroupId $WorkgroupId -ModifyWorkgroupMembersRequest $ModifyWorkgroupMembersRequest
} catch {
    Write-Host ("Exception occurred when calling Edit-V2WorkgroupMembers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkgroupId** | **String**| The workgroup ID | 
 **ModifyWorkgroupMembersRequest** | [**ModifyWorkgroupMembersRequest**](ModifyWorkgroupMembersRequest.md)| Add/Remove workgroup member ids. | 

### Return type

void (empty response body)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-V2Workgroup"></a>
# **Update-V2Workgroup**
> ListWorkgroups200ResponseInner Update-V2Workgroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkgroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-CreateWorkgroupRequest] <PSCustomObject><br>

Update Work Group By Id

This API updates and returns the details for a single workgroup based on the ID

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$WorkgroupId = "ef38f94347e94562b5bb8424a56397d8" # String | The workgroup ID
$CreateWorkgroupRequestOwner = Initialize-CreateWorkgroupRequestOwner -Id "2c9180867624cbd7017642d8c8c81f67"
$CreateWorkgroupRequest = Initialize-CreateWorkgroupRequest -Name "Test group 3" -Description "This is a test" -Owner $CreateWorkgroupRequestOwner # CreateWorkgroupRequest | Work group to modify.

# Update Work Group By Id
try {
    $Result = Update-V2Workgroup -WorkgroupId $WorkgroupId -CreateWorkgroupRequest $CreateWorkgroupRequest
} catch {
    Write-Host ("Exception occurred when calling Update-V2Workgroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkgroupId** | **String**| The workgroup ID | 
 **CreateWorkgroupRequest** | [**CreateWorkgroupRequest**](CreateWorkgroupRequest.md)| Work group to modify. | 

### Return type

[**ListWorkgroups200ResponseInner**](ListWorkgroups200ResponseInner.md) (PSCustomObject)

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

