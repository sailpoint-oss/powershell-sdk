# PSSailpointV2.PSSailpointV2/Api.V2GovernanceGroupsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Invoke-V2BulkDeleteWorkGroups**](V2GovernanceGroupsApi.md#Invoke-V2BulkDeleteWorkGroups) | **POST** /workgroups/bulk-delete | Bulk delete work groups
[**New-V2Workgroup**](V2GovernanceGroupsApi.md#New-V2Workgroup) | **POST** /workgroups | Create Work Group
[**Remove-V2Workgroup**](V2GovernanceGroupsApi.md#Remove-V2Workgroup) | **DELETE** /workgroups/{workgroupId} | Delete Work Group By Id
[**Get-V2Workgroup**](V2GovernanceGroupsApi.md#Get-V2Workgroup) | **GET** /workgroups/{workgroupId} | Get Work Group By Id
[**Get-V2WorkgroupConnections**](V2GovernanceGroupsApi.md#Get-V2WorkgroupConnections) | **GET** /workgroups/{workgroupId}/connections | List Work Group Connections
[**Get-V2WorkgroupMembers**](V2GovernanceGroupsApi.md#Get-V2WorkgroupMembers) | **GET** /workgroups/{workgroupId}/members | List Work Group Members
[**Get-V2Workgroups**](V2GovernanceGroupsApi.md#Get-V2Workgroups) | **GET** /workgroups | List Work Groups
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-V2Workgroup"></a>
# **Remove-V2Workgroup**
> void Remove-V2Workgroup<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkgroupId] <String><br>

Delete Work Group By Id

This API deletes a single workgroup based on the ID

### Example
```powershell
$WorkgroupId = "ef38f94347e94562b5bb8424a56397d8" # String | The workgroup ID

# Delete Work Group By Id
try {
    $Result = Remove-V2Workgroup -WorkgroupId $WorkgroupId
} catch {
    Write-Host ("Exception occurred when calling Remove-V2Workgroup: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-V2WorkgroupConnections"></a>
# **Get-V2WorkgroupConnections**
> ListWorkgroupConnections200ResponseInner[] Get-V2WorkgroupConnections<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkgroupId] <String><br>

List Work Group Connections

This API returns the connections of a work group

### Example
```powershell
$WorkgroupId = "ef38f94347e94562b5bb8424a56397d8" # String | The workgroup ID

# List Work Group Connections
try {
    $Result = Get-V2WorkgroupConnections -WorkgroupId $WorkgroupId
} catch {
    Write-Host ("Exception occurred when calling Get-V2WorkgroupConnections: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-V2WorkgroupMembers"></a>
# **Get-V2WorkgroupMembers**
> ListWorkgroupMembers200ResponseInner[] Get-V2WorkgroupMembers<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-WorkgroupId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Work Group Members

This API returns the members of a work group

### Example
```powershell
$WorkgroupId = "ef38f94347e94562b5bb8424a56397d8" # String | The workgroup ID
$Limit = 250 # Int32 | Max number of results to return (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. (optional) (default to 0)
$Filters = "MyFilters" # String | Filter results using the following syntax. [{property:name, value: ""Tyler"", operation: EQ}] (optional)

# List Work Group Members
try {
    $Result = Get-V2WorkgroupMembers -WorkgroupId $WorkgroupId -Limit $Limit -Offset $Offset -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2WorkgroupMembers: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **WorkgroupId** | **String**| The workgroup ID | 
 **Limit** | **Int32**| Max number of results to return | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. | [optional] [default to 0]
 **Filters** | **String**| Filter results using the following syntax. [{property:name, value: &quot;&quot;Tyler&quot;&quot;, operation: EQ}] | [optional] 

### Return type

[**ListWorkgroupMembers200ResponseInner[]**](ListWorkgroupMembers200ResponseInner.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-V2Workgroups"></a>
# **Get-V2Workgroups**
> ListWorkgroups200ResponseInner[] Get-V2Workgroups<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Work Groups

This API returns a list of work groups

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. (optional) (default to 0)
$Filters = "MyFilters" # String | Filter results using the following syntax. [{property:name, value: ""Tyler"", operation: EQ}] (optional)

# List Work Groups
try {
    $Result = Get-V2Workgroups -Limit $Limit -Offset $Offset -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2Workgroups: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. | [optional] [default to 0]
 **Filters** | **String**| Filter results using the following syntax. [{property:name, value: &quot;&quot;Tyler&quot;&quot;, operation: EQ}] | [optional] 

### Return type

[**ListWorkgroups200ResponseInner[]**](ListWorkgroups200ResponseInner.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

