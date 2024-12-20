# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024ConnectorRuleManagementApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024ConnectorRule**](V2024ConnectorRuleManagementApi.md#New-V2024ConnectorRule) | **POST** /connector-rules | Create Connector Rule
[**Remove-V2024ConnectorRule**](V2024ConnectorRuleManagementApi.md#Remove-V2024ConnectorRule) | **DELETE** /connector-rules/{id} | Delete Connector Rule
[**Get-V2024ConnectorRule**](V2024ConnectorRuleManagementApi.md#Get-V2024ConnectorRule) | **GET** /connector-rules/{id} | Get Connector Rule
[**Get-V2024ConnectorRuleList**](V2024ConnectorRuleManagementApi.md#Get-V2024ConnectorRuleList) | **GET** /connector-rules | List Connector Rules
[**Send-V2024ConnectorRule**](V2024ConnectorRuleManagementApi.md#Send-V2024ConnectorRule) | **PUT** /connector-rules/{id} | Update Connector Rule
[**Test-V2024ConnectorRule**](V2024ConnectorRuleManagementApi.md#Test-V2024ConnectorRule) | **POST** /connector-rules/validate | Validate Connector Rule


<a id="New-V2024ConnectorRule"></a>
# **New-V2024ConnectorRule**
> ConnectorRuleResponse New-V2024ConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectorRuleCreateRequest] <PSCustomObject><br>

Create Connector Rule

Create a connector rule from the available types.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Argument = Initialize-Argument -Name "firstName" -Description "the first name of the identity" -Type "String"
$ConnectorRuleCreateRequestSignature = Initialize-ConnectorRuleCreateRequestSignature -VarInput $Argument -Output $Argument

$SourceCode = Initialize-SourceCode -Version "1.0" -Script "return "Mr. " + firstName;"
$ConnectorRuleCreateRequest = Initialize-ConnectorRuleCreateRequest -Name "WebServiceBeforeOperationRule" -Description "This rule does that" -Type "BuildMap" -Signature $ConnectorRuleCreateRequestSignature -SourceCode $SourceCode -Attributes # ConnectorRuleCreateRequest | Connector rule to create.

# Create Connector Rule
try {
    $Result = New-V2024ConnectorRule -XSailPointExperimental $XSailPointExperimental -ConnectorRuleCreateRequest $ConnectorRuleCreateRequest
} catch {
    Write-Host ("Exception occurred when calling New-V2024ConnectorRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **ConnectorRuleCreateRequest** | [**ConnectorRuleCreateRequest**](ConnectorRuleCreateRequest.md)| Connector rule to create. | 

### Return type

[**ConnectorRuleResponse**](ConnectorRuleResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024ConnectorRule"></a>
# **Remove-V2024ConnectorRule**
> void Remove-V2024ConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Delete Connector Rule

Delete the connector rule for the given ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | ID of the connector rule to delete.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Delete Connector Rule
try {
    $Result = Remove-V2024ConnectorRule -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024ConnectorRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the connector rule to delete. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ConnectorRule"></a>
# **Get-V2024ConnectorRule**
> ConnectorRuleResponse Get-V2024ConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Get Connector Rule

Get a connector rule by ID.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | ID of the connector rule to get.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get Connector Rule
try {
    $Result = Get-V2024ConnectorRule -Id $Id -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ConnectorRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the connector rule to get. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**ConnectorRuleResponse**](ConnectorRuleResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ConnectorRuleList"></a>
# **Get-V2024ConnectorRuleList**
> ConnectorRuleResponse[] Get-V2024ConnectorRuleList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>

List Connector Rules

List existing connector rules.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Limit = 50 # Int32 | Note that for this API the maximum value for limit is 50. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 50)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# List Connector Rules
try {
    $Result = Get-V2024ConnectorRuleList -XSailPointExperimental $XSailPointExperimental -Limit $Limit -Offset $Offset -Count $Count
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ConnectorRuleList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **Limit** | **Int32**| Note that for this API the maximum value for limit is 50. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 50]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]

### Return type

[**ConnectorRuleResponse[]**](ConnectorRuleResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024ConnectorRule"></a>
# **Send-V2024ConnectorRule**
> ConnectorRuleResponse Send-V2024ConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectorRuleUpdateRequest] <PSCustomObject><br>

Update Connector Rule

Update an existing connector rule with the one provided in the request body. These fields are immutable: `id`, `name`, `type`

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | ID of the connector rule to update.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Argument = Initialize-Argument -Name "firstName" -Description "the first name of the identity" -Type "String"
$ConnectorRuleCreateRequestSignature = Initialize-ConnectorRuleCreateRequestSignature -VarInput $Argument -Output $Argument

$SourceCode = Initialize-SourceCode -Version "1.0" -Script "return "Mr. " + firstName;"
$ConnectorRuleUpdateRequest = Initialize-ConnectorRuleUpdateRequest -Name "WebServiceBeforeOperationRule" -Description "This rule does that" -Type "BuildMap" -Signature $ConnectorRuleCreateRequestSignature -SourceCode $SourceCode -Attributes  -Id "8113d48c0b914f17b4c6072d4dcb9dfe" # ConnectorRuleUpdateRequest | Connector rule with updated data. (optional)

# Update Connector Rule
try {
    $Result = Send-V2024ConnectorRule -Id $Id -XSailPointExperimental $XSailPointExperimental -ConnectorRuleUpdateRequest $ConnectorRuleUpdateRequest
} catch {
    Write-Host ("Exception occurred when calling Send-V2024ConnectorRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the connector rule to update. | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **ConnectorRuleUpdateRequest** | [**ConnectorRuleUpdateRequest**](ConnectorRuleUpdateRequest.md)| Connector rule with updated data. | [optional] 

### Return type

[**ConnectorRuleResponse**](ConnectorRuleResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Test-V2024ConnectorRule"></a>
# **Test-V2024ConnectorRule**
> ConnectorRuleValidationResponse Test-V2024ConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceCode] <PSCustomObject><br>

Validate Connector Rule

Detect issues within the connector rule's code to fix and list them.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SourceCode = Initialize-SourceCode -Version "1.0" -Script "return "Mr. " + firstName;" # SourceCode | Code to validate.

# Validate Connector Rule
try {
    $Result = Test-V2024ConnectorRule -XSailPointExperimental $XSailPointExperimental -SourceCode $SourceCode
} catch {
    Write-Host ("Exception occurred when calling Test-V2024ConnectorRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **SourceCode** | [**SourceCode**](SourceCode.md)| Code to validate. | 

### Return type

[**ConnectorRuleValidationResponse**](ConnectorRuleValidationResponse.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

