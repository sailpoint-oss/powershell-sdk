# PSSailpointBeta.PSSailpointBeta/Api.BetaConnectorRuleManagementApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaConnectorRule**](BetaConnectorRuleManagementApi.md#New-BetaConnectorRule) | **POST** /connector-rules | Create Connector Rule
[**Remove-BetaConnectorRule**](BetaConnectorRuleManagementApi.md#Remove-BetaConnectorRule) | **DELETE** /connector-rules/{id} | Delete a Connector-Rule
[**Get-BetaConnectorRule**](BetaConnectorRuleManagementApi.md#Get-BetaConnectorRule) | **GET** /connector-rules/{id} | Connector-Rule by ID
[**Get-BetaConnectorRuleList**](BetaConnectorRuleManagementApi.md#Get-BetaConnectorRuleList) | **GET** /connector-rules | List Connector Rules
[**Update-BetaConnectorRule**](BetaConnectorRuleManagementApi.md#Update-BetaConnectorRule) | **PUT** /connector-rules/{id} | Update a Connector Rule
[**Confirm-BetaConnectorRule**](BetaConnectorRuleManagementApi.md#Confirm-BetaConnectorRule) | **POST** /connector-rules/validate | Validate Connector Rule


<a name="New-BetaConnectorRule"></a>
# **New-BetaConnectorRule**
> ConnectorRuleResponse New-BetaConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectorRuleCreateRequest] <PSCustomObject><br>

Create Connector Rule

Creates a new connector rule. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Argument = Initialize-Argument -Name "firstName" -Description "the first name of the identity" -Type "String"
$ConnectorRuleCreateRequestSignature = Initialize-ConnectorRuleCreateRequestSignature -VarInput $Argument -Output $Argument

$SourceCode = Initialize-SourceCode -Version "1.0" -Script "return "Mr. " + firstName;"
$ConnectorRuleCreateRequest = Initialize-ConnectorRuleCreateRequest -Name "WebServiceBeforeOperationRule" -Description "This rule does that" -Type "BuildMap" -Signature $ConnectorRuleCreateRequestSignature -SourceCode $SourceCode -Attributes # ConnectorRuleCreateRequest | The connector rule to create

# Create Connector Rule
try {
    $Result = New-BetaConnectorRule -ConnectorRuleCreateRequest $ConnectorRuleCreateRequest
} catch {
    Write-Host ("Exception occurred when calling New-BetaConnectorRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ConnectorRuleCreateRequest** | [**ConnectorRuleCreateRequest**](ConnectorRuleCreateRequest.md)| The connector rule to create | 

### Return type

[**ConnectorRuleResponse**](ConnectorRuleResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaConnectorRule"></a>
# **Remove-BetaConnectorRule**
> void Remove-BetaConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete a Connector-Rule

Deletes the connector rule specified by the given ID. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | ID of the connector rule to delete

# Delete a Connector-Rule
try {
    $Result = Remove-BetaConnectorRule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaConnectorRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the connector rule to delete | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaConnectorRule"></a>
# **Get-BetaConnectorRule**
> ConnectorRuleResponse Get-BetaConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Connector-Rule by ID

Returns the connector rule specified by ID. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | ID of the connector rule to retrieve

# Connector-Rule by ID
try {
    $Result = Get-BetaConnectorRule -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaConnectorRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the connector rule to retrieve | 

### Return type

[**ConnectorRuleResponse**](ConnectorRuleResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaConnectorRuleList"></a>
# **Get-BetaConnectorRuleList**
> ConnectorRuleResponse[] Get-BetaConnectorRuleList<br>

List Connector Rules

Returns the list of connector rules. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell

# List Connector Rules
try {
    $Result = Get-BetaConnectorRuleList
} catch {
    Write-Host ("Exception occurred when calling Get-BetaConnectorRuleList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ConnectorRuleResponse[]**](ConnectorRuleResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Update-BetaConnectorRule"></a>
# **Update-BetaConnectorRule**
> ConnectorRuleResponse Update-BetaConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ConnectorRuleUpdateRequest] <PSCustomObject><br>

Update a Connector Rule

Updates an existing connector rule with the one provided in the request body. Note that the fields 'id', 'name', and 'type' are immutable. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$Id = "8c190e6787aa4ed9a90bd9d5344523fb" # String | ID of the connector rule to update
$Argument = Initialize-Argument -Name "firstName" -Description "the first name of the identity" -Type "String"
$ConnectorRuleCreateRequestSignature = Initialize-ConnectorRuleCreateRequestSignature -VarInput $Argument -Output $Argument

$SourceCode = Initialize-SourceCode -Version "1.0" -Script "return "Mr. " + firstName;"
$ConnectorRuleUpdateRequest = Initialize-ConnectorRuleUpdateRequest -Id "8113d48c0b914f17b4c6072d4dcb9dfe" -Name "WebServiceBeforeOperationRule" -Description "This rule does that" -Type "BuildMap" -Signature $ConnectorRuleCreateRequestSignature -SourceCode $SourceCode -Attributes # ConnectorRuleUpdateRequest | The connector rule with updated data (optional)

# Update a Connector Rule
try {
    $Result = Update-BetaConnectorRule -Id $Id -ConnectorRuleUpdateRequest $ConnectorRuleUpdateRequest
} catch {
    Write-Host ("Exception occurred when calling Update-BetaConnectorRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| ID of the connector rule to update | 
 **ConnectorRuleUpdateRequest** | [**ConnectorRuleUpdateRequest**](ConnectorRuleUpdateRequest.md)| The connector rule with updated data | [optional] 

### Return type

[**ConnectorRuleResponse**](ConnectorRuleResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Confirm-BetaConnectorRule"></a>
# **Confirm-BetaConnectorRule**
> ConnectorRuleValidationResponse Confirm-BetaConnectorRule<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SourceCode] <PSCustomObject><br>

Validate Connector Rule

Returns a list of issues within the code to fix, if any. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
$SourceCode = Initialize-SourceCode -Version "1.0" -Script "return "Mr. " + firstName;" # SourceCode | The code to validate

# Validate Connector Rule
try {
    $Result = Confirm-BetaConnectorRule -SourceCode $SourceCode
} catch {
    Write-Host ("Exception occurred when calling Confirm-BetaConnectorRule: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SourceCode** | [**SourceCode**](SourceCode.md)| The code to validate | 

### Return type

[**ConnectorRuleValidationResponse**](ConnectorRuleValidationResponse.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

