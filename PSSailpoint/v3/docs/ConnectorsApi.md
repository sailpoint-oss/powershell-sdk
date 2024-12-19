# PSSailpoint.V3.PSSailpoint.V3\Api.ConnectorsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-CustomConnector**](ConnectorsApi.md#New-CustomConnector) | **POST** /connectors | Create Custom Connector
[**Remove-CustomConnector**](ConnectorsApi.md#Remove-CustomConnector) | **DELETE** /connectors/{scriptName} | Delete Connector by Script Name
[**Get-Connector**](ConnectorsApi.md#Get-Connector) | **GET** /connectors/{scriptName} | Get Connector by Script Name
[**Get-ConnectorList**](ConnectorsApi.md#Get-ConnectorList) | **GET** /connectors | Get Connector List
[**Get-ConnectorSourceConfig**](ConnectorsApi.md#Get-ConnectorSourceConfig) | **GET** /connectors/{scriptName}/source-config | Get Connector Source Configuration
[**Get-ConnectorSourceTemplate**](ConnectorsApi.md#Get-ConnectorSourceTemplate) | **GET** /connectors/{scriptName}/source-template | Get Connector Source Template
[**Get-ConnectorTranslations**](ConnectorsApi.md#Get-ConnectorTranslations) | **GET** /connectors/{scriptName}/translations/{locale} | Get Connector Translations
[**Send-ConnectorSourceConfig**](ConnectorsApi.md#Send-ConnectorSourceConfig) | **PUT** /connectors/{scriptName}/source-config | Update Connector Source Configuration
[**Send-ConnectorSourceTemplate**](ConnectorsApi.md#Send-ConnectorSourceTemplate) | **PUT** /connectors/{scriptName}/source-template | Update Connector Source Template
[**Send-ConnectorTranslations**](ConnectorsApi.md#Send-ConnectorTranslations) | **PUT** /connectors/{scriptName}/translations/{locale} | Update Connector Translations
[**Update-Connector**](ConnectorsApi.md#Update-Connector) | **PATCH** /connectors/{scriptName} | Update Connector by Script Name


<a id="New-CustomConnector"></a>
# **New-CustomConnector**
> V3ConnectorDto New-CustomConnector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-V3CreateConnectorDto] <PSCustomObject><br>

Create Custom Connector

Create custom connector.    

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$V3CreateConnectorDto = Initialize-V3CreateConnectorDto -Name "custom connector" -Type "custom connector type" -ClassName "sailpoint.connector.OpenConnectorAdapter" -DirectConnect $true -Status "DEVELOPMENT" # V3CreateConnectorDto | 

# Create Custom Connector
try {
    $Result = New-CustomConnector -V3CreateConnectorDto $V3CreateConnectorDto
} catch {
    Write-Host ("Exception occurred when calling New-CustomConnector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **V3CreateConnectorDto** | [**V3CreateConnectorDto**](V3CreateConnectorDto.md)|  | 

### Return type

[**V3ConnectorDto**](V3ConnectorDto.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-CustomConnector"></a>
# **Remove-CustomConnector**
> void Remove-CustomConnector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>

Delete Connector by Script Name

Delete a custom connector that using its script name.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. ScriptName is the unique id generated at connector creation.

# Delete Connector by Script Name
try {
    $Result = Remove-CustomConnector -ScriptName $ScriptName
} catch {
    Write-Host ("Exception occurred when calling Remove-CustomConnector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. ScriptName is the unique id generated at connector creation. | 

### Return type

void (empty response body)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-Connector"></a>
# **Get-Connector**
> ConnectorDetail Get-Connector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>

Get Connector by Script Name

Fetches a connector that using its script name.    

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. ScriptName is the unique id generated at connector creation.
$Locale = "de" # String | The locale to apply to the config. If no viable locale is given, it will default to ""en"" (optional)

# Get Connector by Script Name
try {
    $Result = Get-Connector -ScriptName $ScriptName -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Get-Connector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. ScriptName is the unique id generated at connector creation. | 
 **Locale** | **String**| The locale to apply to the config. If no viable locale is given, it will default to &quot;&quot;en&quot;&quot; | [optional] 

### Return type

[**ConnectorDetail**](ConnectorDetail.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ConnectorList"></a>
# **Get-ConnectorList**
> V3ConnectorDto[] Get-ConnectorList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>

Get Connector List

Fetches list of connectors that have 'RELEASED' status using filtering and pagination.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Filters = "directConnect eq "true"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw, co*  **type**: *sw, co, eq*  **directConnect**: *eq*  **category**: *eq*  **features**: *ca*  **labels**: *ca* (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Locale = "de" # String | The locale to apply to the config. If no viable locale is given, it will default to ""en"" (optional)

# Get Connector List
try {
    $Result = Get-ConnectorList -Filters $Filters -Limit $Limit -Offset $Offset -Count $Count -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Get-ConnectorList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw, co*  **type**: *sw, co, eq*  **directConnect**: *eq*  **category**: *eq*  **features**: *ca*  **labels**: *ca* | [optional] 
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Locale** | **String**| The locale to apply to the config. If no viable locale is given, it will default to &quot;&quot;en&quot;&quot; | [optional] 

### Return type

[**V3ConnectorDto[]**](V3ConnectorDto.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ConnectorSourceConfig"></a>
# **Get-ConnectorSourceConfig**
> String Get-ConnectorSourceConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>

Get Connector Source Configuration

Fetches a connector's source config using its script name.    

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. ScriptName is the unique id generated at connector creation.

# Get Connector Source Configuration
try {
    $Result = Get-ConnectorSourceConfig -ScriptName $ScriptName
} catch {
    Write-Host ("Exception occurred when calling Get-ConnectorSourceConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. ScriptName is the unique id generated at connector creation. | 

### Return type

**String**

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ConnectorSourceTemplate"></a>
# **Get-ConnectorSourceTemplate**
> String Get-ConnectorSourceTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>

Get Connector Source Template

Fetches a connector's source template using its script name.    

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. ScriptName is the unique id generated at connector creation.

# Get Connector Source Template
try {
    $Result = Get-ConnectorSourceTemplate -ScriptName $ScriptName
} catch {
    Write-Host ("Exception occurred when calling Get-ConnectorSourceTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. ScriptName is the unique id generated at connector creation. | 

### Return type

**String**

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ConnectorTranslations"></a>
# **Get-ConnectorTranslations**
> String Get-ConnectorTranslations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>

Get Connector Translations

Fetches a connector's translations using its script name.    

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. Scriptname is the unique id generated at connector creation.
$Locale = "de" # String | The locale to apply to the config. If no viable locale is given, it will default to ""en""

# Get Connector Translations
try {
    $Result = Get-ConnectorTranslations -ScriptName $ScriptName -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Get-ConnectorTranslations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. Scriptname is the unique id generated at connector creation. | 
 **Locale** | **String**| The locale to apply to the config. If no viable locale is given, it will default to &quot;&quot;en&quot;&quot; | 

### Return type

**String**

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-ConnectorSourceConfig"></a>
# **Send-ConnectorSourceConfig**
> UpdateDetail Send-ConnectorSourceConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Update Connector Source Configuration

Update a connector's source config using its script name.    

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. ScriptName is the unique id generated at connector creation.
$File =  # System.IO.FileInfo | connector source config xml file

# Update Connector Source Configuration
try {
    $Result = Send-ConnectorSourceConfig -ScriptName $ScriptName -File $File
} catch {
    Write-Host ("Exception occurred when calling Send-ConnectorSourceConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. ScriptName is the unique id generated at connector creation. | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| connector source config xml file | 

### Return type

[**UpdateDetail**](UpdateDetail.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-ConnectorSourceTemplate"></a>
# **Send-ConnectorSourceTemplate**
> UpdateDetail Send-ConnectorSourceTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>

Update Connector Source Template

Update a connector's source template using its script name.    

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. ScriptName is the unique id generated at connector creation.
$File =  # System.IO.FileInfo | connector source template xml file

# Update Connector Source Template
try {
    $Result = Send-ConnectorSourceTemplate -ScriptName $ScriptName -File $File
} catch {
    Write-Host ("Exception occurred when calling Send-ConnectorSourceTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. ScriptName is the unique id generated at connector creation. | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| connector source template xml file | 

### Return type

[**UpdateDetail**](UpdateDetail.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-ConnectorTranslations"></a>
# **Send-ConnectorTranslations**
> UpdateDetail Send-ConnectorTranslations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>

Update Connector Translations

Update a connector's translations using its script name.    

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. Scriptname is the unique id generated at connector creation.
$Locale = "de" # String | The locale to apply to the config. If no viable locale is given, it will default to ""en""

# Update Connector Translations
try {
    $Result = Send-ConnectorTranslations -ScriptName $ScriptName -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Send-ConnectorTranslations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. Scriptname is the unique id generated at connector creation. | 
 **Locale** | **String**| The locale to apply to the config. If no viable locale is given, it will default to &quot;&quot;en&quot;&quot; | 

### Return type

[**UpdateDetail**](UpdateDetail.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-Connector"></a>
# **Update-Connector**
> ConnectorDetail Update-Connector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update Connector by Script Name

This API updates a custom connector by script name using [JSON Patch](https://tools.ietf.org/html/rfc6902) syntax.  The following fields are patchable:   * connectorMetadata  * applicationXml  * correlationConfigXml  * sourceConfigXml 

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: userAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. ScriptName is the unique id generated at connector creation.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of connector detail update operations 

# Update Connector by Script Name
try {
    $Result = Update-Connector -ScriptName $ScriptName -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-Connector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. ScriptName is the unique id generated at connector creation. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of connector detail update operations  | 

### Return type

[**ConnectorDetail**](ConnectorDetail.md) (PSCustomObject)

### Authorization

[userAuth](../README.md#userAuth), [userAuth](../README.md#userAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

