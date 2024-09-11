# Tm.V3.Tm.V3\Api.ConnectorsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-CustomConnector**](ConnectorsApi.md#New-CustomConnector) | **POST** /connectors | Create custom connector
[**Remove-CustomConnector**](ConnectorsApi.md#Remove-CustomConnector) | **DELETE** /connectors/{scriptName} | Deletes connector by script name
[**Get-Connector**](ConnectorsApi.md#Get-Connector) | **GET** /connectors/{scriptName} | Gets connector by script name
[**Get-ConnectorCorrelationConfig**](ConnectorsApi.md#Get-ConnectorCorrelationConfig) | **GET** /connectors/{scriptName}/correlation-config | 
[**Get-ConnectorList**](ConnectorsApi.md#Get-ConnectorList) | **GET** /connectors | Gets connector list
[**Get-ConnectorSourceConfig**](ConnectorsApi.md#Get-ConnectorSourceConfig) | **GET** /connectors/{scriptName}/source-config | 
[**Get-ConnectorSourceTemplate**](ConnectorsApi.md#Get-ConnectorSourceTemplate) | **GET** /connectors/{scriptName}/source-template | 
[**Get-ConnectorTranslations**](ConnectorsApi.md#Get-ConnectorTranslations) | **GET** /connectors/{scriptName}/translations/{locale} | 
[**Send-CorrelationConfig**](ConnectorsApi.md#Send-CorrelationConfig) | **PUT** /connectors/{scriptName}/correlation-config | 
[**Send-SourceConfig**](ConnectorsApi.md#Send-SourceConfig) | **PUT** /connectors/{scriptName}/source-config | 
[**Send-SourceTemplate**](ConnectorsApi.md#Send-SourceTemplate) | **PUT** /connectors/{scriptName}/source-template | 
[**Send-Translations**](ConnectorsApi.md#Send-Translations) | **PUT** /connectors/{scriptName}/translations/{locale} | 
[**Update-Connector**](ConnectorsApi.md#Update-Connector) | **PATCH** /connectors/{scriptName} | Update connector by script name


<a id="New-CustomConnector"></a>
# **New-CustomConnector**
> V3ConnectorDto New-CustomConnector<br>
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Remove-CustomConnector"></a>
# **Remove-CustomConnector**
> void Remove-CustomConnector<br>
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
    $Result = Remove-CustomConnector -ScriptName $ScriptName
} catch {
    Write-Host ("Exception occurred when calling Remove-CustomConnector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-Connector"></a>
# **Get-Connector**
> ConnectorDetail Get-Connector<br>
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
    $Result = Get-Connector -ScriptName $ScriptName -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Get-Connector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-ConnectorCorrelationConfig"></a>
# **Get-ConnectorCorrelationConfig**
> String Get-ConnectorCorrelationConfig<br>
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
    $Result = Get-ConnectorCorrelationConfig -ScriptName $ScriptName
} catch {
    Write-Host ("Exception occurred when calling Get-ConnectorCorrelationConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-ConnectorList"></a>
# **Get-ConnectorList**
> V3ConnectorDto[] Get-ConnectorList<br>
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Get-ConnectorSourceConfig"></a>
# **Get-ConnectorSourceConfig**
> String Get-ConnectorSourceConfig<br>
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
    $Result = Get-ConnectorSourceConfig -ScriptName $ScriptName
} catch {
    Write-Host ("Exception occurred when calling Get-ConnectorSourceConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-ConnectorSourceTemplate"></a>
# **Get-ConnectorSourceTemplate**
> String Get-ConnectorSourceTemplate<br>
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
    $Result = Get-ConnectorSourceTemplate -ScriptName $ScriptName
} catch {
    Write-Host ("Exception occurred when calling Get-ConnectorSourceTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Get-ConnectorTranslations"></a>
# **Get-ConnectorTranslations**
> String Get-ConnectorTranslations<br>
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

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a id="Send-CorrelationConfig"></a>
# **Send-CorrelationConfig**
> UpdateDetail Send-CorrelationConfig<br>
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
    $Result = Send-CorrelationConfig -ScriptName $ScriptName -File $File
} catch {
    Write-Host ("Exception occurred when calling Send-CorrelationConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Send-SourceConfig"></a>
# **Send-SourceConfig**
> UpdateDetail Send-SourceConfig<br>
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
    $Result = Send-SourceConfig -ScriptName $ScriptName -File $File
} catch {
    Write-Host ("Exception occurred when calling Send-SourceConfig: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Send-SourceTemplate"></a>
# **Send-SourceTemplate**
> UpdateDetail Send-SourceTemplate<br>
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
    $Result = Send-SourceTemplate -ScriptName $ScriptName -File $File
} catch {
    Write-Host ("Exception occurred when calling Send-SourceTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Send-Translations"></a>
# **Send-Translations**
> UpdateDetail Send-Translations<br>
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
    $Result = Send-Translations -ScriptName $ScriptName -Locale $Locale
} catch {
    Write-Host ("Exception occurred when calling Send-Translations: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

<a id="Update-Connector"></a>
# **Update-Connector**
> ConnectorDetail Update-Connector<br>
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
    $Result = Update-Connector -ScriptName $ScriptName -JsonPatchOperation $JsonPatchOperation
} catch {
    Write-Host ("Exception occurred when calling Update-Connector: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
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

