# PSSailpointV2024.PSSailpointV2024\Api.V2024TransformsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024Transform**](V2024TransformsApi.md#New-V2024Transform) | **POST** /transforms | Create transform
[**Remove-V2024Transform**](V2024TransformsApi.md#Remove-V2024Transform) | **DELETE** /transforms/{id} | Delete a transform
[**Get-V2024Transform**](V2024TransformsApi.md#Get-V2024Transform) | **GET** /transforms/{id} | Transform by ID
[**Get-V2024Transforms**](V2024TransformsApi.md#Get-V2024Transforms) | **GET** /transforms | List transforms
[**Update-V2024Transform**](V2024TransformsApi.md#Update-V2024Transform) | **PUT** /transforms/{id} | Update a transform


<a id="New-V2024Transform"></a>
# **New-V2024Transform**
> TransformRead New-V2024Transform<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Transform] <PSCustomObject><br>

Create transform

Creates a new transform object immediately. By default, the internal flag is set to false to indicate that this is a custom transform. Only SailPoint employees have the ability to create a transform with internal set to true. Newly created Transforms can be used in the Identity Profile mappings within the UI. A token with transform write authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$DateFormatInputFormat = Initialize-DateFormatInputFormat 
$DateFormatOutputFormat = Initialize-DateFormatOutputFormat 
$DateCompareFirstDate = Initialize-DateCompareFirstDate -SourceName "Workday" -AttributeName "DEPARTMENT" -AccountSortAttribute "created" -AccountSortDescending $false -AccountReturnFirstLink $false -AccountFilter "!(nativeIdentity.startsWith("*DELETED*"))" -AccountPropertyFilter "(groups.containsAll({'Admin'}) || location == 'Austin')" -RequiresPeriodicRefresh $false -VarInput @{ key_example =  } -InputFormat $DateFormatInputFormat -OutputFormat $DateFormatOutputFormat

$DateCompareSecondDate = Initialize-DateCompareSecondDate -SourceName "Workday" -AttributeName "DEPARTMENT" -AccountSortAttribute "created" -AccountSortDescending $false -AccountReturnFirstLink $false -AccountFilter "!(nativeIdentity.startsWith("*DELETED*"))" -AccountPropertyFilter "(groups.containsAll({'Admin'}) || location == 'Austin')" -RequiresPeriodicRefresh $false -VarInput @{ key_example =  } -InputFormat $DateFormatInputFormat -OutputFormat $DateFormatOutputFormat

$TransformAttributes = Initialize-TransformAttributes -SourceName "Workday" -AttributeName "DEPARTMENT" -AccountSortAttribute "created" -AccountSortDescending $false -AccountReturnFirstLink $false -AccountFilter "!(nativeIdentity.startsWith("*DELETED*"))" -AccountPropertyFilter "(groups.containsAll({'Admin'}) || location == 'Austin')" -RequiresPeriodicRefresh $false -VarInput @{ key_example =  } -Values "string$variable" -Expression "now+1w" -PositiveCondition "true" -NegativeCondition "false" -FirstDate $DateCompareFirstDate -SecondDate $DateCompareSecondDate -Operator "LT" -InputFormat $DateFormatInputFormat -OutputFormat $DateFormatOutputFormat -RoundUp $false -DefaultRegion "US" -IgnoreErrors $false -Name "email" -Operation "getReferenceIdentityAttribute" -IncludeNumbers $true -IncludeSpecialChars $true -Length "4" -Uid "2c91808570313110017040b06f344ec9" -Substring "admin_" -Format "alpha2" -Padding "0" -Table @{ key_example =  } -Id "Existing Transform" -Regex "[^a-zA-Z]" -Replacement " " -Delimiter "," -Index "5" -Throws $true -VarBegin 1 -BeginOffset 3 -VarEnd 6 -EndOffset 1

$Transform = Initialize-Transform -Name "Timestamp To Date" -Type "accountAttribute" -Attributes $TransformAttributes # Transform | The transform to be created.

# Create transform
try {
    $Result = New-V2024Transform -Transform $Transform
} catch {
    Write-Host ("Exception occurred when calling New-V2024Transform: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Transform** | [**Transform**](Transform.md)| The transform to be created. | 

### Return type

[**TransformRead**](TransformRead.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024Transform"></a>
# **Remove-V2024Transform**
> void Remove-V2024Transform<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a transform

Deletes the transform specified by the given ID. Attempting to delete a transform that is used in one or more Identity Profile mappings will result in an error. If this occurs, you must first remove the transform from all mappings before deleting the transform. A token with transform delete authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2cd78adghjkja34jh2b1hkjhasuecd" # String | ID of the transform to delete

# Delete a transform
try {
    $Result = Remove-V2024Transform -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024Transform: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the transform to delete | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Transform"></a>
# **Get-V2024Transform**
> TransformRead Get-V2024Transform<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Transform by ID

This API returns the transform specified by the given ID. A token with transform read authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2cd78adghjkja34jh2b1hkjhasuecd" # String | ID of the transform to retrieve

# Transform by ID
try {
    $Result = Get-V2024Transform -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Transform: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the transform to retrieve | 

### Return type

[**TransformRead**](TransformRead.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Transforms"></a>
# **Get-V2024Transforms**
> TransformRead[] Get-V2024Transforms<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List transforms

Gets a list of all saved transform objects. A token with transforms-list read authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Name = "ExampleTransformName123" # String | Name of the transform to retrieve from the list. (optional)
$Filters = "name eq "Uppercase"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **internal**: *eq*  **name**: *eq, sw* (optional)

# List transforms
try {
    $Result = Get-V2024Transforms -Offset $Offset -Limit $Limit -Count $Count -Name $Name -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Transforms: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Name** | **String**| Name of the transform to retrieve from the list. | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **internal**: *eq*  **name**: *eq, sw* | [optional] 

### Return type

[**TransformRead[]**](TransformRead.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024Transform"></a>
# **Update-V2024Transform**
> TransformRead Update-V2024Transform<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Transform] <PSCustomObject><br>

Update a transform

Replaces the transform specified by the given ID with the transform provided in the request body. Only the ""attributes"" field is mutable. Attempting to change other properties (ex. ""name"" and ""type"") will result in an error. A token with transform write authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "2cd78adghjkja34jh2b1hkjhasuecd" # String | ID of the transform to update
$DateFormatInputFormat = Initialize-DateFormatInputFormat 
$DateFormatOutputFormat = Initialize-DateFormatOutputFormat 
$DateCompareFirstDate = Initialize-DateCompareFirstDate -SourceName "Workday" -AttributeName "DEPARTMENT" -AccountSortAttribute "created" -AccountSortDescending $false -AccountReturnFirstLink $false -AccountFilter "!(nativeIdentity.startsWith("*DELETED*"))" -AccountPropertyFilter "(groups.containsAll({'Admin'}) || location == 'Austin')" -RequiresPeriodicRefresh $false -VarInput @{ key_example =  } -InputFormat $DateFormatInputFormat -OutputFormat $DateFormatOutputFormat

$DateCompareSecondDate = Initialize-DateCompareSecondDate -SourceName "Workday" -AttributeName "DEPARTMENT" -AccountSortAttribute "created" -AccountSortDescending $false -AccountReturnFirstLink $false -AccountFilter "!(nativeIdentity.startsWith("*DELETED*"))" -AccountPropertyFilter "(groups.containsAll({'Admin'}) || location == 'Austin')" -RequiresPeriodicRefresh $false -VarInput @{ key_example =  } -InputFormat $DateFormatInputFormat -OutputFormat $DateFormatOutputFormat

$TransformAttributes = Initialize-TransformAttributes -SourceName "Workday" -AttributeName "DEPARTMENT" -AccountSortAttribute "created" -AccountSortDescending $false -AccountReturnFirstLink $false -AccountFilter "!(nativeIdentity.startsWith("*DELETED*"))" -AccountPropertyFilter "(groups.containsAll({'Admin'}) || location == 'Austin')" -RequiresPeriodicRefresh $false -VarInput @{ key_example =  } -Values "string$variable" -Expression "now+1w" -PositiveCondition "true" -NegativeCondition "false" -FirstDate $DateCompareFirstDate -SecondDate $DateCompareSecondDate -Operator "LT" -InputFormat $DateFormatInputFormat -OutputFormat $DateFormatOutputFormat -RoundUp $false -DefaultRegion "US" -IgnoreErrors $false -Name "email" -Operation "getReferenceIdentityAttribute" -IncludeNumbers $true -IncludeSpecialChars $true -Length "4" -Uid "2c91808570313110017040b06f344ec9" -Substring "admin_" -Format "alpha2" -Padding "0" -Table @{ key_example =  } -Id "Existing Transform" -Regex "[^a-zA-Z]" -Replacement " " -Delimiter "," -Index "5" -Throws $true -VarBegin 1 -BeginOffset 3 -VarEnd 6 -EndOffset 1

$Transform = Initialize-Transform -Name "Timestamp To Date" -Type "accountAttribute" -Attributes $TransformAttributes # Transform | The updated transform object. Must include ""name"", ""type"", and ""attributes"" fields, but ""name"" and ""type"" must not be modified. (optional)

# Update a transform
try {
    $Result = Update-V2024Transform -Id $Id -Transform $Transform
} catch {
    Write-Host ("Exception occurred when calling Update-V2024Transform: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the transform to update | 
 **Transform** | [**Transform**](Transform.md)| The updated transform object. Must include &quot;&quot;name&quot;&quot;, &quot;&quot;type&quot;&quot;, and &quot;&quot;attributes&quot;&quot; fields, but &quot;&quot;name&quot;&quot; and &quot;&quot;type&quot;&quot; must not be modified. | [optional] 

### Return type

[**TransformRead**](TransformRead.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

