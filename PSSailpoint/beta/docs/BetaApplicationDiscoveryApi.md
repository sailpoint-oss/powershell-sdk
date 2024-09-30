# PSSailpoint.Beta.PSSailpoint.Beta\Api.BetaApplicationDiscoveryApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-BetaDiscoveredApplicationByID**](BetaApplicationDiscoveryApi.md#Get-BetaDiscoveredApplicationByID) | **GET** /discovered-applications/{id} | Get Discovered Application by ID
[**Get-BetaDiscoveredApplications**](BetaApplicationDiscoveryApi.md#Get-BetaDiscoveredApplications) | **GET** /discovered-applications | Retrieve discovered applications for tenant
[**Get-BetaManualDiscoverApplicationsCsvTemplate**](BetaApplicationDiscoveryApi.md#Get-BetaManualDiscoverApplicationsCsvTemplate) | **GET** /manual-discover-applications-template | Download CSV Template for Discovery
[**Update-BetaDiscoveredApplicationByID**](BetaApplicationDiscoveryApi.md#Update-BetaDiscoveredApplicationByID) | **PATCH** /discovered-applications/{id} | Patch Discovered Application by ID
[**Send-BetaManualDiscoverApplicationsCsvTemplate**](BetaApplicationDiscoveryApi.md#Send-BetaManualDiscoverApplicationsCsvTemplate) | **POST** /manual-discover-applications | Upload CSV to Discover Applications


<a id="Get-BetaDiscoveredApplicationByID"></a>
# **Get-BetaDiscoveredApplicationByID**
> void Get-BetaDiscoveredApplicationByID<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Discovered Application by ID

Get the discovered application, along with with its associated sources, based on the provided ID. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "123e4567-e89b-12d3-a456-426655440000" # String | Discovered application's ID.

# Get Discovered Application by ID
try {
    $Result = Get-BetaDiscoveredApplicationByID -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaDiscoveredApplicationByID: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Discovered application&#39;s ID. | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaDiscoveredApplications"></a>
# **Get-BetaDiscoveredApplications**
> GetDiscoveredApplications200ResponseInner[] Get-BetaDiscoveredApplications<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Detail] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filter] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

Retrieve discovered applications for tenant

Get a list of applications that have been identified within the environment. This includes details such as application names, discovery dates, potential correlated saas_vendors and related suggested connectors. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Detail = "SLIM" # String | Determines whether slim, or increased level of detail is provided for each discovered application in the returned list. SLIM is the default behavior. (optional)
$Filter = "name eq "Okta" and description co "Okta" and discoverySource in ("csv", "Okta Saas")" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)       Filtering is supported for the following fields and operators:  **name**: *eq, sw, co*  **description**: *eq, sw, co*  **createdAtStart**: *eq, le, ge*  **createdAtEnd**: *eq, le, ge*  **discoveredAtStart**: *eq, le, ge*  **discoveredAtEnd**: *eq, le, ge*  **discoverySource**: *eq, in*  (optional)
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, description, discoveredAt, discoverySource** (optional)

# Retrieve discovered applications for tenant
try {
    $Result = Get-BetaDiscoveredApplications -Limit $Limit -Offset $Offset -Detail $Detail -Filter $Filter -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaDiscoveredApplications: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Detail** | **String**| Determines whether slim, or increased level of detail is provided for each discovered application in the returned list. SLIM is the default behavior. | [optional] 
 **Filter** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)       Filtering is supported for the following fields and operators:  **name**: *eq, sw, co*  **description**: *eq, sw, co*  **createdAtStart**: *eq, le, ge*  **createdAtEnd**: *eq, le, ge*  **discoveredAtStart**: *eq, le, ge*  **discoveredAtEnd**: *eq, le, ge*  **discoverySource**: *eq, in*  | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, description, discoveredAt, discoverySource** | [optional] 

### Return type

[**GetDiscoveredApplications200ResponseInner[]**](GetDiscoveredApplications200ResponseInner.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-BetaManualDiscoverApplicationsCsvTemplate"></a>
# **Get-BetaManualDiscoverApplicationsCsvTemplate**
> ManualDiscoverApplicationsTemplate Get-BetaManualDiscoverApplicationsCsvTemplate<br>

Download CSV Template for Discovery

Download an example CSV file with two columns `application_name` and `description`.  The CSV file contains a single row with the values 'Example Application' and 'Example Description'.  The downloaded template is specifically designed for use with the `/manual-discover-applications` endpoint. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Download CSV Template for Discovery
try {
    $Result = Get-BetaManualDiscoverApplicationsCsvTemplate
} catch {
    Write-Host ("Exception occurred when calling Get-BetaManualDiscoverApplicationsCsvTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ManualDiscoverApplicationsTemplate**](ManualDiscoverApplicationsTemplate.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-BetaDiscoveredApplicationByID"></a>
# **Update-BetaDiscoveredApplicationByID**
> void Update-BetaDiscoveredApplicationByID<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperations] <PSCustomObject[]><br>

Patch Discovered Application by ID

Update an existing discovered application by using a limited version of the [JSON Patch](https://tools.ietf.org/html/rfc6902) syntax. You can patch these fields: - **associatedSources** - **dismissed**

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "123e4567-e89b-12d3-a456-426655440000" # String | Discovered application's ID.
$JsonPatchOperationsValue = Initialize-JsonPatchOperationsValue 
$JsonPatchOperations = Initialize-JsonPatchOperations -Op "add" -Path "/dismissed" -Value $JsonPatchOperationsValue # JsonPatchOperations[] |  (optional)

# Patch Discovered Application by ID
try {
    $Result = Update-BetaDiscoveredApplicationByID -Id $Id -JsonPatchOperations $JsonPatchOperations
} catch {
    Write-Host ("Exception occurred when calling Update-BetaDiscoveredApplicationByID: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Discovered application&#39;s ID. | 
 **JsonPatchOperations** | [**JsonPatchOperations[]**](JsonPatchOperations.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-BetaManualDiscoverApplicationsCsvTemplate"></a>
# **Send-BetaManualDiscoverApplicationsCsvTemplate**
> void Send-BetaManualDiscoverApplicationsCsvTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Upload CSV to Discover Applications

Upload a CSV file with application data for manual correlation to specific ISC connectors.  If a suitable ISC connector is unavailable, the system will recommend generic connectors instead.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$File =  # System.IO.FileInfo | The CSV file to upload containing `application_name` and `description` columns. Each row represents an application to be discovered.

# Upload CSV to Discover Applications
try {
    $Result = Send-BetaManualDiscoverApplicationsCsvTemplate -File $File
} catch {
    Write-Host ("Exception occurred when calling Send-BetaManualDiscoverApplicationsCsvTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| The CSV file to upload containing &#x60;application_name&#x60; and &#x60;description&#x60; columns. Each row represents an application to be discovered. | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

