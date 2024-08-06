# PSSailpointV2024.PSSailpointV2024\Api.V2024RoleInsightsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024RoleInsightRequests**](V2024RoleInsightsApi.md#New-V2024RoleInsightRequests) | **POST** /role-insights/requests | Generate insights for roles
[**Invoke-V2024DownloadRoleInsightsEntitlementsChanges**](V2024RoleInsightsApi.md#Invoke-V2024DownloadRoleInsightsEntitlementsChanges) | **GET** /role-insights/{insightId}/entitlement-changes/download | Download entitlement insights for a role
[**Get-V2024EntitlementChangesIdentities**](V2024RoleInsightsApi.md#Get-V2024EntitlementChangesIdentities) | **GET** /role-insights/{insightId}/entitlement-changes/{entitlementId}/identities | Get identities for a suggested entitlement (for a role)
[**Get-V2024RoleInsight**](V2024RoleInsightsApi.md#Get-V2024RoleInsight) | **GET** /role-insights/{insightId} | Get a single role insight
[**Get-V2024RoleInsights**](V2024RoleInsightsApi.md#Get-V2024RoleInsights) | **GET** /role-insights | Get role insights
[**Get-V2024RoleInsightsCurrentEntitlements**](V2024RoleInsightsApi.md#Get-V2024RoleInsightsCurrentEntitlements) | **GET** /role-insights/{insightId}/current-entitlements | Get current entitlement for a role
[**Get-V2024RoleInsightsEntitlementsChanges**](V2024RoleInsightsApi.md#Get-V2024RoleInsightsEntitlementsChanges) | **GET** /role-insights/{insightId}/entitlement-changes | Get entitlement insights for a role
[**Get-V2024RoleInsightsRequests**](V2024RoleInsightsApi.md#Get-V2024RoleInsightsRequests) | **GET** /role-insights/requests/{id} | Returns metadata from prior request.
[**Get-V2024RoleInsightsSummary**](V2024RoleInsightsApi.md#Get-V2024RoleInsightsSummary) | **GET** /role-insights/summary | Get role insights summary information


<a id="New-V2024RoleInsightRequests"></a>
# **New-V2024RoleInsightRequests**
> RoleInsightsResponse New-V2024RoleInsightRequests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Generate insights for roles

Submits a create role insights request to the role insights application. At this time there are no parameters. All business roles will be processed for the customer.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Generate insights for roles
try {
    $Result = New-V2024RoleInsightRequests -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling New-V2024RoleInsightRequests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**RoleInsightsResponse**](RoleInsightsResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Invoke-V2024DownloadRoleInsightsEntitlementsChanges"></a>
# **Invoke-V2024DownloadRoleInsightsEntitlementsChanges**
> String Invoke-V2024DownloadRoleInsightsEntitlementsChanges<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InsightId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

Download entitlement insights for a role

This endpoint returns the entitlement insights for a role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$InsightId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role insight id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Sorters = "identitiesWithAccess" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **identitiesWithAccess**  The default sort is **identitiesWithAccess** in descending order. (optional)
$Filters = "name sw "r"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw*  **description**: *sw* (optional)

# Download entitlement insights for a role
try {
    $Result = Invoke-V2024DownloadRoleInsightsEntitlementsChanges -InsightId $InsightId -XSailPointExperimental $XSailPointExperimental -Sorters $Sorters -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Invoke-V2024DownloadRoleInsightsEntitlementsChanges: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InsightId** | **String**| The role insight id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **identitiesWithAccess**  The default sort is **identitiesWithAccess** in descending order. | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw*  **description**: *sw* | [optional] 

### Return type

**String**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024EntitlementChangesIdentities"></a>
# **Get-V2024EntitlementChangesIdentities**
> RoleInsightsIdentities[] Get-V2024EntitlementChangesIdentities<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InsightId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EntitlementId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-HasEntitlement] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

Get identities for a suggested entitlement (for a role)

Role insights suggests entitlements to be added for a role. This endpoint returns a list of identities in the role, with or without the entitlements, for a suggested entitlement so that the user can see which identities would be affected if the suggested entitlement were to be added to the role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$InsightId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role insight id
$EntitlementId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The entitlement id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$HasEntitlement = $true # Boolean | Identity has this entitlement or not (optional) (default to $false)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Sorters = "name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name** (optional)
$Filters = "name sw "Jan"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw* (optional)

# Get identities for a suggested entitlement (for a role)
try {
    $Result = Get-V2024EntitlementChangesIdentities -InsightId $InsightId -EntitlementId $EntitlementId -XSailPointExperimental $XSailPointExperimental -HasEntitlement $HasEntitlement -Offset $Offset -Limit $Limit -Count $Count -Sorters $Sorters -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024EntitlementChangesIdentities: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InsightId** | **String**| The role insight id | 
 **EntitlementId** | **String**| The entitlement id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **HasEntitlement** | **Boolean**| Identity has this entitlement or not | [optional] [default to $false]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw* | [optional] 

### Return type

[**RoleInsightsIdentities[]**](RoleInsightsIdentities.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleInsight"></a>
# **Get-V2024RoleInsight**
> RoleInsight Get-V2024RoleInsight<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InsightId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get a single role insight

This endpoint gets role insights information for a role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$InsightId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role insight id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get a single role insight
try {
    $Result = Get-V2024RoleInsight -InsightId $InsightId -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleInsight: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InsightId** | **String**| The role insight id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**RoleInsight**](RoleInsight.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleInsights"></a>
# **Get-V2024RoleInsights**
> RoleInsight[] Get-V2024RoleInsights<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

Get role insights

This method returns detailed role insights for each role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Sorters = "numberOfUpdates" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **numberOfUpdates, identitiesWithAccess, totalNumberOfIdentities** (optional)
$Filters = "name sw "John"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw*  **ownerName**: *sw*  **description**: *sw* (optional)

# Get role insights
try {
    $Result = Get-V2024RoleInsights -XSailPointExperimental $XSailPointExperimental -Offset $Offset -Limit $Limit -Count $Count -Sorters $Sorters -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleInsights: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **numberOfUpdates, identitiesWithAccess, totalNumberOfIdentities** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw*  **ownerName**: *sw*  **description**: *sw* | [optional] 

### Return type

[**RoleInsight[]**](RoleInsight.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleInsightsCurrentEntitlements"></a>
# **Get-V2024RoleInsightsCurrentEntitlements**
> RoleInsightsEntitlement[] Get-V2024RoleInsightsCurrentEntitlements<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InsightId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

Get current entitlement for a role

This endpoint gets the entitlements for a role. The term ""current"" is to distinguish from the entitlement(s) an insight might recommend adding.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$InsightId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role insight id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Filters = "name sw "r"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw*  **description**: *sw* (optional)

# Get current entitlement for a role
try {
    $Result = Get-V2024RoleInsightsCurrentEntitlements -InsightId $InsightId -XSailPointExperimental $XSailPointExperimental -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleInsightsCurrentEntitlements: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InsightId** | **String**| The role insight id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw*  **description**: *sw* | [optional] 

### Return type

[**RoleInsightsEntitlement[]**](RoleInsightsEntitlement.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleInsightsEntitlementsChanges"></a>
# **Get-V2024RoleInsightsEntitlementsChanges**
> RoleInsightsEntitlementChanges[] Get-V2024RoleInsightsEntitlementsChanges<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-InsightId] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

Get entitlement insights for a role

This endpoint returns entitlement insights for a role.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$InsightId = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role insight id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Sorters = "MySorters" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **identitiesWithAccess, name** (optional)
$Filters = "name sw "Admin"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw*  **description**: *sw* (optional)

# Get entitlement insights for a role
try {
    $Result = Get-V2024RoleInsightsEntitlementsChanges -InsightId $InsightId -XSailPointExperimental $XSailPointExperimental -Sorters $Sorters -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleInsightsEntitlementsChanges: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **InsightId** | **String**| The role insight id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **identitiesWithAccess, name** | [optional] 
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw*  **description**: *sw* | [optional] 

### Return type

[**RoleInsightsEntitlementChanges[]**](RoleInsightsEntitlementChanges.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleInsightsRequests"></a>
# **Get-V2024RoleInsightsRequests**
> RoleInsightsResponse Get-V2024RoleInsightsRequests<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Returns metadata from prior request.

This endpoint returns details of a prior role insights request. 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e67-87aa-4ed9-a90b-d9d5344523fb" # String | The role insights request id
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Returns metadata from prior request.
try {
    $Result = Get-V2024RoleInsightsRequests -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleInsightsRequests: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| The role insights request id | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**RoleInsightsResponse**](RoleInsightsResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024RoleInsightsSummary"></a>
# **Get-V2024RoleInsightsSummary**
> RoleInsightsSummary Get-V2024RoleInsightsSummary<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get role insights summary information

This method returns high level summary information for role insights for a customer.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get role insights summary information
try {
    $Result = Get-V2024RoleInsightsSummary -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024RoleInsightsSummary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**RoleInsightsSummary**](RoleInsightsSummary.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

