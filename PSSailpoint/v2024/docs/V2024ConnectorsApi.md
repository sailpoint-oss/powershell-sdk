# PSSailpointV2024.PSSailpointV2024\Api.V2024ConnectorsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024CustomConnector**](V2024ConnectorsApi.md#New-V2024CustomConnector) | **POST** /connectors | Create custom connector
[**Remove-V2024CustomConnector**](V2024ConnectorsApi.md#Remove-V2024CustomConnector) | **DELETE** /connectors/{scriptName} | Deletes connector by script name
[**Get-V2024Connector**](V2024ConnectorsApi.md#Get-V2024Connector) | **GET** /connectors/{scriptName} | Gets connector by script name
[**Get-V2024ConnectorCorrelationConfig**](V2024ConnectorsApi.md#Get-V2024ConnectorCorrelationConfig) | **GET** /connectors/{scriptName}/correlation-config | 
[**Get-V2024ConnectorList**](V2024ConnectorsApi.md#Get-V2024ConnectorList) | **GET** /connectors | Gets connector list
[**Get-V2024ConnectorSourceConfig**](V2024ConnectorsApi.md#Get-V2024ConnectorSourceConfig) | **GET** /connectors/{scriptName}/source-config | 
[**Get-V2024ConnectorSourceTemplate**](V2024ConnectorsApi.md#Get-V2024ConnectorSourceTemplate) | **GET** /connectors/{scriptName}/source-template | 
[**Get-V2024ConnectorTranslations**](V2024ConnectorsApi.md#Get-V2024ConnectorTranslations) | **GET** /connectors/{scriptName}/translations/{locale} | 
[**Send-V2024CorrelationConfig**](V2024ConnectorsApi.md#Send-V2024CorrelationConfig) | **PUT** /connectors/{scriptName}/correlation-config | 
[**Send-V2024SourceConfig**](V2024ConnectorsApi.md#Send-V2024SourceConfig) | **PUT** /connectors/{scriptName}/source-config | 
[**Send-V2024SourceTemplate**](V2024ConnectorsApi.md#Send-V2024SourceTemplate) | **PUT** /connectors/{scriptName}/source-template | 
[**Send-V2024Translations**](V2024ConnectorsApi.md#Send-V2024Translations) | **PUT** /connectors/{scriptName}/translations/{locale} | 
[**Update-V2024Connector**](V2024ConnectorsApi.md#Update-V2024Connector) | **PATCH** /connectors/{scriptName} | Update connector by script name


<a id="New-V2024CustomConnector"></a>
# **New-V2024CustomConnector**
> V3ConnectorDto New-V2024CustomConnector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-V3CreateConnectorDto] <PSCustomObject><br>

Create custom connector

Create custom connector. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$V3CreateConnectorDto = Initialize-V3CreateConnectorDto -Name "custom connector" -Type "custom connector type" -ClassName "sailpoint.connector.OpenConnectorAdapter" -DirectConnect $true -Status "DEVELOPMENT" # V3CreateConnectorDto | 

# Create custom connector
try {
    $Result = New-V2024CustomConnector -V3CreateConnectorDto $V3CreateConnectorDto
} catch {
    Write-Host ("Exception occurred when calling New-V2024CustomConnector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-V2024CustomConnector"></a>
# **Remove-V2024CustomConnector**
> void Remove-V2024CustomConnector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>

Deletes connector by script name

Delete a custom connector that using its script name. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. Scriptname is the unique id generated at connector creation.

# Deletes connector by script name
try {
    $Result = Remove-V2024CustomConnector -ScriptName $ScriptName
} catch {
    Write-Host ("Exception occurred when calling Remove-V2024CustomConnector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. Scriptname is the unique id generated at connector creation. | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024Connector"></a>
# **Get-V2024Connector**
> ConnectorDetail Get-V2024Connector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>

Gets connector by script name

Fetches a connector that using its script name. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. Scriptname is the unique id generated at connector creation.
$Locale = "de" # String | The locale to apply to the config. If no viable locale is given, it will default to ""en"" (optional)

# Gets connector by script name
try {
    $Result = Get-V2024Connector -ScriptName $ScriptName -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Get-V2024Connector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. Scriptname is the unique id generated at connector creation. | 
 **Locale** | **String**| The locale to apply to the config. If no viable locale is given, it will default to &quot;&quot;en&quot;&quot; | [optional] 

### Return type

[**ConnectorDetail**](ConnectorDetail.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ConnectorCorrelationConfig"></a>
# **Get-V2024ConnectorCorrelationConfig**
> String Get-V2024ConnectorCorrelationConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>



Fetches a connector's correlation config using its script name. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. Scriptname is the unique id generated at connector creation.

try {
    $Result = Get-V2024ConnectorCorrelationConfig -ScriptName $ScriptName
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ConnectorCorrelationConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. Scriptname is the unique id generated at connector creation. | 

### Return type

**String**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ConnectorList"></a>
# **Get-V2024ConnectorList**
> V3ConnectorDto[] Get-V2024ConnectorList<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>

Gets connector list

Fetches list of connectors that have 'RELEASED' status using filtering and pagination. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$Filters = "directConnect eq "true"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw, co*  **type**: *sw, co, eq*  **directConnect**: *eq*  **category**: *eq*  **features**: *ca*  **labels**: *ca* (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Locale = "de" # String | The locale to apply to the config. If no viable locale is given, it will default to ""en"" (optional)

# Gets connector list
try {
    $Result = Get-V2024ConnectorList -Filters $Filters -Limit $Limit -Offset $Offset -Count $Count -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ConnectorList: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ConnectorSourceConfig"></a>
# **Get-V2024ConnectorSourceConfig**
> String Get-V2024ConnectorSourceConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>



Fetches a connector's source config using its script name. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. Scriptname is the unique id generated at connector creation.

try {
    $Result = Get-V2024ConnectorSourceConfig -ScriptName $ScriptName
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ConnectorSourceConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. Scriptname is the unique id generated at connector creation. | 

### Return type

**String**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ConnectorSourceTemplate"></a>
# **Get-V2024ConnectorSourceTemplate**
> String Get-V2024ConnectorSourceTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>



Fetches a connector's source template using its script name. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. Scriptname is the unique id generated at connector creation.

try {
    $Result = Get-V2024ConnectorSourceTemplate -ScriptName $ScriptName
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ConnectorSourceTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. Scriptname is the unique id generated at connector creation. | 

### Return type

**String**

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-V2024ConnectorTranslations"></a>
# **Get-V2024ConnectorTranslations**
> String Get-V2024ConnectorTranslations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>



Fetches a connector's translations using its script name. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. Scriptname is the unique id generated at connector creation.
$Locale = "de" # String | The locale to apply to the config. If no viable locale is given, it will default to ""en""

try {
    $Result = Get-V2024ConnectorTranslations -ScriptName $ScriptName -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Get-V2024ConnectorTranslations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024CorrelationConfig"></a>
# **Send-V2024CorrelationConfig**
> UpdateDetail Send-V2024CorrelationConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>



Update a connector's correlation config using its script name. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. Scriptname is the unique id generated at connector creation.
$File =  # System.IO.FileInfo | connector correlation config xml file

try {
    $Result = Send-V2024CorrelationConfig -ScriptName $ScriptName -File $File
} catch {
    Write-Host ("Exception occurred when calling Send-V2024CorrelationConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. Scriptname is the unique id generated at connector creation. | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| connector correlation config xml file | 

### Return type

[**UpdateDetail**](UpdateDetail.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024SourceConfig"></a>
# **Send-V2024SourceConfig**
> UpdateDetail Send-V2024SourceConfig<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>



Update a connector's source config using its script name. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. Scriptname is the unique id generated at connector creation.
$File =  # System.IO.FileInfo | connector source config xml file

try {
    $Result = Send-V2024SourceConfig -ScriptName $ScriptName -File $File
} catch {
    Write-Host ("Exception occurred when calling Send-V2024SourceConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. Scriptname is the unique id generated at connector creation. | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| connector source config xml file | 

### Return type

[**UpdateDetail**](UpdateDetail.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024SourceTemplate"></a>
# **Send-V2024SourceTemplate**
> UpdateDetail Send-V2024SourceTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-File] <System.IO.FileInfo><br>



Update a connector's source template using its script name. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. Scriptname is the unique id generated at connector creation.
$File =  # System.IO.FileInfo | connector source template xml file

try {
    $Result = Send-V2024SourceTemplate -ScriptName $ScriptName -File $File
} catch {
    Write-Host ("Exception occurred when calling Send-V2024SourceTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. Scriptname is the unique id generated at connector creation. | 
 **File** | **System.IO.FileInfo****System.IO.FileInfo**| connector source template xml file | 

### Return type

[**UpdateDetail**](UpdateDetail.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-V2024Translations"></a>
# **Send-V2024Translations**
> UpdateDetail Send-V2024Translations<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Locale] <String><br>



Update a connector's translations using its script name. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. Scriptname is the unique id generated at connector creation.
$Locale = "de" # String | The locale to apply to the config. If no viable locale is given, it will default to ""en""

try {
    $Result = Send-V2024Translations -ScriptName $ScriptName -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Send-V2024Translations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Update-V2024Connector"></a>
# **Update-V2024Connector**
> ConnectorDetail Update-V2024Connector<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-ScriptName] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-JsonPatchOperation] <PSCustomObject[]><br>

Update connector by script name

Patch a custom connector that using its script name. A token with ORG_ADMIN authority is required to call this API. The following fields are patchable: * connectorMetadata * applicationXml * correlationConfigXml * sourceConfigXml

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: UserContextAuth
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

$ScriptName = "aScriptName" # String | The scriptName value of the connector. Scriptname is the unique id generated at connector creation.
$JsonPatchOperationValue = Initialize-JsonPatchOperationValue 
$JsonPatchOperation = Initialize-JsonPatchOperation -Op "add" -Path "/description" -Value $JsonPatchOperationValue # JsonPatchOperation[] | A list of connector detail update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

# Update connector by script name
try {
    $Result = Update-V2024Connector -ScriptName $ScriptName -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-V2024Connector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ScriptName** | **String**| The scriptName value of the connector. Scriptname is the unique id generated at connector creation. | 
 **JsonPatchOperation** | [**JsonPatchOperation[]**](JsonPatchOperation.md)| A list of connector detail update operations according to the [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. | 

### Return type

[**ConnectorDetail**](ConnectorDetail.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

