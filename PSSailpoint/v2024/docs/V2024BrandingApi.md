# PSSailpointV2024.PSSailpointV2024\Api.V2024BrandingApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024BrandingItem**](V2024BrandingApi.md#New-V2024BrandingItem) | **POST** /brandings | Create a branding item
[**Remove-V2024Branding**](V2024BrandingApi.md#Remove-V2024Branding) | **DELETE** /brandings/{name} | Delete a branding item
[**Get-V2024Branding**](V2024BrandingApi.md#Get-V2024Branding) | **GET** /brandings/{name} | Get a branding item
[**Get-V2024BrandingList**](V2024BrandingApi.md#Get-V2024BrandingList) | **GET** /brandings | List of branding items
[**Set-V2024BrandingItem**](V2024BrandingApi.md#Set-V2024BrandingItem) | **PUT** /brandings/{name} | Update a branding item


<a id="New-V2024BrandingItem"></a>
# **New-V2024BrandingItem**
> BrandingItem New-V2024BrandingItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ActionButtonColor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ActiveLinkColor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NavigationColor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailFromAddress] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LoginInformationalMessage] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileStandard] <System.IO.FileInfo><br>

Create a branding item

This API endpoint creates a branding item. A token with API, ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "MyName" # String | name of branding item
$ProductName = "MyProductName" # String | product name
$ActionButtonColor = "MyActionButtonColor" # String | hex value of color for action button (optional)
$ActiveLinkColor = "MyActiveLinkColor" # String | hex value of color for link (optional)
$NavigationColor = "MyNavigationColor" # String | hex value of color for navigation bar (optional)
$EmailFromAddress = "MyEmailFromAddress" # String | email from address (optional)
$LoginInformationalMessage = "MyLoginInformationalMessage" # String | login information message (optional)
$FileStandard =  # System.IO.FileInfo | png file with logo (optional)

# Create a branding item
try {
    $Result = New-V2024BrandingItem -Name $Name -ProductName $ProductName -ActionButtonColor $ActionButtonColor -ActiveLinkColor $ActiveLinkColor -NavigationColor $NavigationColor -EmailFromAddress $EmailFromAddress -LoginInformationalMessage $LoginInformationalMessage -FileStandard $FileStandard
} catch {
    Write-Host ("Exception occurred when calling New-V2024BrandingItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| name of branding item | 
 **ProductName** | **String**| product name | 
 **ActionButtonColor** | **String**| hex value of color for action button | [optional] 
 **ActiveLinkColor** | **String**| hex value of color for link | [optional] 
 **NavigationColor** | **String**| hex value of color for navigation bar | [optional] 
 **EmailFromAddress** | **String**| email from address | [optional] 
 **LoginInformationalMessage** | **String**| login information message | [optional] 
 **FileStandard** | **System.IO.FileInfo****System.IO.FileInfo**| png file with logo | [optional] 

### Return type

[**BrandingItem**](BrandingItem.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024Branding"></a>
# **Remove-V2024Branding**
> void Remove-V2024Branding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Delete a branding item

This API endpoint delete information for an existing branding item by name. A token with API, ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "default" # String | The name of the branding item to be deleted

# Delete a branding item
try {
    $Result = Remove-V2024Branding -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024Branding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| The name of the branding item to be deleted | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Branding"></a>
# **Get-V2024Branding**
> BrandingItem Get-V2024Branding<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>

Get a branding item

This API endpoint retrieves information for an existing branding item by name. A token with API, ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "default" # String | The name of the branding item to be retrieved

# Get a branding item
try {
    $Result = Get-V2024Branding -Name $Name
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Branding: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| The name of the branding item to be retrieved | 

### Return type

[**BrandingItem**](BrandingItem.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024BrandingList"></a>
# **Get-V2024BrandingList**
> BrandingItem[] Get-V2024BrandingList<br>

List of branding items

This API endpoint returns a list of branding items.  A token with API, ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# List of branding items
try {
    $Result = Get-V2024BrandingList
} catch {
    Write-Host ("Exception occurred when calling Get-V2024BrandingList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BrandingItem[]**](BrandingItem.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Set-V2024BrandingItem"></a>
# **Set-V2024BrandingItem**
> BrandingItem Set-V2024BrandingItem<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Name2] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ProductName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ActionButtonColor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ActiveLinkColor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-NavigationColor] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailFromAddress] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-LoginInformationalMessage] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-FileStandard] <System.IO.FileInfo><br>

Update a branding item

This API endpoint updates information for an existing branding item. A token with API, ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Name = "default" # String | The name of the branding item to be retrieved
$Name2 = "Name_example" # String | name of branding item
$ProductName = "MyProductName" # String | product name
$ActionButtonColor = "MyActionButtonColor" # String | hex value of color for action button (optional)
$ActiveLinkColor = "MyActiveLinkColor" # String | hex value of color for link (optional)
$NavigationColor = "MyNavigationColor" # String | hex value of color for navigation bar (optional)
$EmailFromAddress = "MyEmailFromAddress" # String | email from address (optional)
$LoginInformationalMessage = "MyLoginInformationalMessage" # String | login information message (optional)
$FileStandard =  # System.IO.FileInfo | png file with logo (optional)

# Update a branding item
try {
    $Result = Set-V2024BrandingItem -Name $Name -Name2 $Name2 -ProductName $ProductName -ActionButtonColor $ActionButtonColor -ActiveLinkColor $ActiveLinkColor -NavigationColor $NavigationColor -EmailFromAddress $EmailFromAddress -LoginInformationalMessage $LoginInformationalMessage -FileStandard $FileStandard
} catch {
    Write-Host ("Exception occurred when calling Set-V2024BrandingItem: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Name** | **String**| The name of the branding item to be retrieved | 
 **Name2** | **String**| name of branding item | 
 **ProductName** | **String**| product name | 
 **ActionButtonColor** | **String**| hex value of color for action button | [optional] 
 **ActiveLinkColor** | **String**| hex value of color for link | [optional] 
 **NavigationColor** | **String**| hex value of color for navigation bar | [optional] 
 **EmailFromAddress** | **String**| email from address | [optional] 
 **LoginInformationalMessage** | **String**| login information message | [optional] 
 **FileStandard** | **System.IO.FileInfo****System.IO.FileInfo**| png file with logo | [optional] 

### Return type

[**BrandingItem**](BrandingItem.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

