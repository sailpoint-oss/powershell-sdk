# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024TaggedObjectsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-V2024TaggedObject**](V2024TaggedObjectsApi.md#Remove-V2024TaggedObject) | **DELETE** /tagged-objects/{type}/{id} | Delete Tagged Object
[**Remove-V2024TagsToManyObject**](V2024TaggedObjectsApi.md#Remove-V2024TagsToManyObject) | **POST** /tagged-objects/bulk-remove | Remove Tags from Multiple Objects
[**Get-V2024TaggedObject**](V2024TaggedObjectsApi.md#Get-V2024TaggedObject) | **GET** /tagged-objects/{type}/{id} | Get Tagged Object
[**Get-V2024TaggedObjects**](V2024TaggedObjectsApi.md#Get-V2024TaggedObjects) | **GET** /tagged-objects | List Tagged Objects
[**Get-V2024TaggedObjectsByType**](V2024TaggedObjectsApi.md#Get-V2024TaggedObjectsByType) | **GET** /tagged-objects/{type} | List Tagged Objects by Type
[**Send-V2024TaggedObject**](V2024TaggedObjectsApi.md#Send-V2024TaggedObject) | **PUT** /tagged-objects/{type}/{id} | Update Tagged Object
[**Set-V2024TagToObject**](V2024TaggedObjectsApi.md#Set-V2024TagToObject) | **POST** /tagged-objects | Add Tag to Object
[**Set-V2024TagsToManyObjects**](V2024TaggedObjectsApi.md#Set-V2024TagsToManyObjects) | **POST** /tagged-objects/bulk-add | Tag Multiple Objects


<a id="Remove-V2024TaggedObject"></a>
# **Remove-V2024TaggedObject**
> void Remove-V2024TaggedObject<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Tagged Object

This deletes a tagged object for the specified type.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Type = "ACCESS_PROFILE" # String | The type of tagged object to delete.
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the object reference to delete.

# Delete Tagged Object
try {
    $Result = Remove-V2024TaggedObject -Type $Type -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024TaggedObject: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Type** | **String**| The type of tagged object to delete. | 
 **Id** | **String**| The ID of the object reference to delete. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024TagsToManyObject"></a>
# **Remove-V2024TagsToManyObject**
> void Remove-V2024TagsToManyObject<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BulkRemoveTaggedObject] <PSCustomObject><br>

Remove Tags from Multiple Objects

This API removes tags from multiple objects.  A token with API, CERT_ADMIN, ORG_ADMIN, REPORT_ADMIN, ROLE_ADMIN, ROLE_SUBADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$TaggedObjectDto = Initialize-TaggedObjectDto -Type "ACCESS_PROFILE" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$BulkRemoveTaggedObject = Initialize-BulkRemoveTaggedObject -ObjectRefs $TaggedObjectDto -Tags "MyTags" # BulkRemoveTaggedObject | Supported object types are ACCESS_PROFILE, APPLICATION, CAMPAIGN, ENTITLEMENT, IDENTITY, ROLE, SOD_POLICY, SOURCE.

# Remove Tags from Multiple Objects
try {
    $Result = Remove-V2024TagsToManyObject -BulkRemoveTaggedObject $BulkRemoveTaggedObject
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024TagsToManyObject: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BulkRemoveTaggedObject** | [**BulkRemoveTaggedObject**](BulkRemoveTaggedObject.md)| Supported object types are ACCESS_PROFILE, APPLICATION, CAMPAIGN, ENTITLEMENT, IDENTITY, ROLE, SOD_POLICY, SOURCE. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024TaggedObject"></a>
# **Get-V2024TaggedObject**
> TaggedObject Get-V2024TaggedObject<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Tagged Object

This gets a tagged object for the specified type.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Type = "ACCESS_PROFILE" # String | The type of tagged object to retrieve.
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the object reference to retrieve.

# Get Tagged Object
try {
    $Result = Get-V2024TaggedObject -Type $Type -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024TaggedObject: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Type** | **String**| The type of tagged object to retrieve. | 
 **Id** | **String**| The ID of the object reference to retrieve. | 

### Return type

[**TaggedObject**](TaggedObject.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024TaggedObjects"></a>
# **Get-V2024TaggedObjects**
> TaggedObject[] Get-V2024TaggedObjects<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Tagged Objects

This API returns a list of all tagged objects.  Any authenticated token may be used to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "tagName eq "BU_FINANCE"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **objectRef.id**: *eq, in*  **objectRef.type**: *eq, in*  **tagName**: *eq, in* (optional)

# List Tagged Objects
try {
    $Result = Get-V2024TaggedObjects -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024TaggedObjects: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **objectRef.id**: *eq, in*  **objectRef.type**: *eq, in*  **tagName**: *eq, in* | [optional] 

### Return type

[**TaggedObject[]**](TaggedObject.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024TaggedObjectsByType"></a>
# **Get-V2024TaggedObjectsByType**
> TaggedObject[] Get-V2024TaggedObjectsByType<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Tagged Objects by Type

This API returns a list of all tagged objects by type.  Any authenticated token may be used to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Type = "ACCESS_PROFILE" # String | The type of tagged object to retrieve.
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "objectRef.id eq "2c91808568c529c60168cca6f90c1313"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **objectRef.id**: *eq*  **objectRef.type**: *eq* (optional)

# List Tagged Objects by Type
try {
    $Result = Get-V2024TaggedObjectsByType -Type $Type -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024TaggedObjectsByType: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Type** | **String**| The type of tagged object to retrieve. | 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **objectRef.id**: *eq*  **objectRef.type**: *eq* | [optional] 

### Return type

[**TaggedObject[]**](TaggedObject.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024TaggedObject"></a>
# **Send-V2024TaggedObject**
> TaggedObject Send-V2024TaggedObject<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Type] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TaggedObject] <PSCustomObject><br>

Update Tagged Object

This updates a tagged object for the specified type.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Type = "ACCESS_PROFILE" # String | The type of tagged object to update.
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | The ID of the object reference to update.
$TaggedObjectDto = Initialize-TaggedObjectDto -Type "ACCESS_PROFILE" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$TaggedObject = Initialize-TaggedObject -ObjectRef $TaggedObjectDto -Tags "MyTags" # TaggedObject | 

# Update Tagged Object
try {
    $Result = Send-V2024TaggedObject -Type $Type -Id $Id -TaggedObject $TaggedObject
} catch {
    Write-Host ("Exception occurred when calling Send-V2024TaggedObject: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Type** | **String**| The type of tagged object to update. | 
 **Id** | **String**| The ID of the object reference to update. | 
 **TaggedObject** | [**TaggedObject**](TaggedObject.md)|  | 

### Return type

[**TaggedObject**](TaggedObject.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-V2024TagToObject"></a>
# **Set-V2024TagToObject**
> void Set-V2024TagToObject<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TaggedObject] <PSCustomObject><br>

Add Tag to Object

This adds a tag to an object.  Any authenticated token may be used to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$TaggedObjectDto = Initialize-TaggedObjectDto -Type "ACCESS_PROFILE" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$TaggedObject = Initialize-TaggedObject -ObjectRef $TaggedObjectDto -Tags "MyTags" # TaggedObject | 

# Add Tag to Object
try {
    $Result = Set-V2024TagToObject -TaggedObject $TaggedObject
} catch {
    Write-Host ("Exception occurred when calling Set-V2024TagToObject: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TaggedObject** | [**TaggedObject**](TaggedObject.md)|  | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-V2024TagsToManyObjects"></a>
# **Set-V2024TagsToManyObjects**
> BulkTaggedObjectResponse[] Set-V2024TagsToManyObjects<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-BulkAddTaggedObject] <PSCustomObject><br>

Tag Multiple Objects

This API adds tags to multiple objects.  A token with API, CERT_ADMIN, ORG_ADMIN, REPORT_ADMIN, ROLE_ADMIN, ROLE_SUBADMIN, SOURCE_ADMIN, or SOURCE_SUBADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$TaggedObjectDto = Initialize-TaggedObjectDto -Type "ACCESS_PROFILE" -Id "2c91808568c529c60168cca6f90c1313" -Name "William Wilson"
$BulkAddTaggedObject = Initialize-BulkAddTaggedObject -ObjectRefs $TaggedObjectDto -Tags "MyTags" -Operation "APPEND" # BulkAddTaggedObject | Supported object types are ACCESS_PROFILE, APPLICATION, CAMPAIGN, ENTITLEMENT, IDENTITY, ROLE, SOD_POLICY, SOURCE.

# Tag Multiple Objects
try {
    $Result = Set-V2024TagsToManyObjects -BulkAddTaggedObject $BulkAddTaggedObject
} catch {
    Write-Host ("Exception occurred when calling Set-V2024TagsToManyObjects: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **BulkAddTaggedObject** | [**BulkAddTaggedObject**](BulkAddTaggedObject.md)| Supported object types are ACCESS_PROFILE, APPLICATION, CAMPAIGN, ENTITLEMENT, IDENTITY, ROLE, SOD_POLICY, SOURCE. | 

### Return type

[**BulkTaggedObjectResponse[]**](BulkTaggedObjectResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

