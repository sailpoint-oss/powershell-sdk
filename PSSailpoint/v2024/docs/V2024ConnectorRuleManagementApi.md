# PSSailpoint.V2024.PSSailpoint.V2024\Api.V2024ConnectorRuleManagementApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024ConnectorRule**](V2024ConnectorRuleManagementApi.md#New-V2024ConnectorRule) | **POST** /connector-rules | Create Connector Rule
[**Remove-V2024ConnectorRule**](V2024ConnectorRuleManagementApi.md#Remove-V2024ConnectorRule) | **DELETE** /connector-rules/{id} | Delete a Connector-Rule
[**Get-V2024ConnectorRule**](V2024ConnectorRuleManagementApi.md#Get-V2024ConnectorRule) | **GET** /connector-rules/{id} | Connector-Rule by ID
[**Get-V2024ConnectorRuleList**](V2024ConnectorRuleManagementApi.md#Get-V2024ConnectorRuleList) | **GET** /connector-rules | List Connector Rules
[**Update-V2024ConnectorRule**](V2024ConnectorRuleManagementApi.md#Update-V2024ConnectorRule) | **PUT** /connector-rules/{id} | Update a Connector Rule
[**Confirm-V2024ConnectorRule**](V2024ConnectorRuleManagementApi.md#Confirm-V2024ConnectorRule) | **POST** /connector-rules/validate | Validate Connector Rule


<a id="New-V2024ConnectorRule"></a>
# **New-V2024ConnectorRule**
> ConnectorRuleResponse New-V2024ConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectorRuleCreateRequest] <PSCustomObject><br>

Create Connector Rule

Creates a new connector rule. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Argument = Initialize-Argument -Name "firstName" -Description "the first name of the identity" -Type "String"
$ConnectorRuleCreateRequestSignature = Initialize-ConnectorRuleCreateRequestSignature -VarInput $Argument -Output $Argument

$SourceCode = Initialize-SourceCode -Version "1.0" -Script "return "Mr. " + firstName;"
$ConnectorRuleCreateRequest = Initialize-ConnectorRuleCreateRequest -Name "WebServiceBeforeOperationRule" -Description "This rule does that" -Type "BuildMap" -Signature $ConnectorRuleCreateRequestSignature -SourceCode $SourceCode -Attributes # ConnectorRuleCreateRequest | The connector rule to create

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
 **ConnectorRuleCreateRequest** | [**ConnectorRuleCreateRequest**](ConnectorRuleCreateRequest.md)| The connector rule to create | 

### Return type

[**ConnectorRuleResponse**](ConnectorRuleResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024ConnectorRule"></a>
# **Remove-V2024ConnectorRule**
> void Remove-V2024ConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Delete a Connector-Rule

Deletes the connector rule specified by the given ID. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | ID of the connector rule to delete
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Delete a Connector-Rule
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
 **Id** | **String**| ID of the connector rule to delete | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ConnectorRule"></a>
# **Get-V2024ConnectorRule**
> ConnectorRuleResponse Get-V2024ConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

Connector-Rule by ID

Returns the connector rule specified by ID. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | ID of the connector rule to retrieve
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Connector-Rule by ID
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
 **Id** | **String**| ID of the connector rule to retrieve | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**ConnectorRuleResponse**](ConnectorRuleResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ConnectorRuleList"></a>
# **Get-V2024ConnectorRuleList**
> ConnectorRuleResponse[] Get-V2024ConnectorRuleList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>

List Connector Rules

Returns the list of connector rules. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# List Connector Rules
try {
    $Result = Get-V2024ConnectorRuleList -XSailPointExperimental $XSailPointExperimental
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ConnectorRuleList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]

### Return type

[**ConnectorRuleResponse[]**](ConnectorRuleResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024ConnectorRule"></a>
# **Update-V2024ConnectorRule**
> ConnectorRuleResponse Update-V2024ConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectorRuleUpdateRequest] <PSCustomObject><br>

Update a Connector Rule

Updates an existing connector rule with the one provided in the request body. Note that the fields 'id', 'name', and 'type' are immutable. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | ID of the connector rule to update
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Argument = Initialize-Argument -Name "firstName" -Description "the first name of the identity" -Type "String"
$ConnectorRuleCreateRequestSignature = Initialize-ConnectorRuleCreateRequestSignature -VarInput $Argument -Output $Argument

$SourceCode = Initialize-SourceCode -Version "1.0" -Script "return "Mr. " + firstName;"
$ConnectorRuleUpdateRequest = Initialize-ConnectorRuleUpdateRequest -Name "WebServiceBeforeOperationRule" -Description "This rule does that" -Type "BuildMap" -Signature $ConnectorRuleCreateRequestSignature -SourceCode $SourceCode -Attributes  -Id "8113d48c0b914f17b4c6072d4dcb9dfe" # ConnectorRuleUpdateRequest | The connector rule with updated data (optional)

# Update a Connector Rule
try {
    $Result = Update-V2024ConnectorRule -Id $Id -XSailPointExperimental $XSailPointExperimental -ConnectorRuleUpdateRequest $ConnectorRuleUpdateRequest
} catch {
    Write-Host ("Exception occurred when calling Update-V2024ConnectorRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the connector rule to update | 
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **ConnectorRuleUpdateRequest** | [**ConnectorRuleUpdateRequest**](ConnectorRuleUpdateRequest.md)| The connector rule with updated data | [optional] 

### Return type

[**ConnectorRuleResponse**](ConnectorRuleResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Confirm-V2024ConnectorRule"></a>
# **Confirm-V2024ConnectorRule**
> ConnectorRuleValidationResponse Confirm-V2024ConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-XSailPointExperimental] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceCode] <PSCustomObject><br>

Validate Connector Rule

Returns a list of issues within the code to fix, if any. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SourceCode = Initialize-SourceCode -Version "1.0" -Script "return "Mr. " + firstName;" # SourceCode | The code to validate

# Validate Connector Rule
try {
    $Result = Confirm-V2024ConnectorRule -XSailPointExperimental $XSailPointExperimental -SourceCode $SourceCode
} catch {
    Write-Host ("Exception occurred when calling Confirm-V2024ConnectorRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **XSailPointExperimental** | **String**| Use this header to enable this experimental API. | [default to &quot;true&quot;]
 **SourceCode** | [**SourceCode**](SourceCode.md)| The code to validate | 

### Return type

[**ConnectorRuleValidationResponse**](ConnectorRuleValidationResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

