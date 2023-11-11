# PSSailpointBeta.PSSailpointBeta/Api.BetaNotificationsApi

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaDomainDkim**](BetaNotificationsApi.md#New-BetaDomainDkim) | **POST** /verified-domains | Verify domain address via DKIM
[**New-BetaNotificationTemplate**](BetaNotificationsApi.md#New-BetaNotificationTemplate) | **POST** /notification-templates | Create Notification Template
[**New-BetaVerifiedFromAddress**](BetaNotificationsApi.md#New-BetaVerifiedFromAddress) | **POST** /verified-from-addresses | Create Verified From Address
[**Remove-BetaNotificationTemplatesInBulk**](BetaNotificationsApi.md#Remove-BetaNotificationTemplatesInBulk) | **POST** /notification-templates/bulk-delete | Bulk Delete Notification Templates
[**Remove-BetaVerifiedFromAddress**](BetaNotificationsApi.md#Remove-BetaVerifiedFromAddress) | **DELETE** /verified-from-addresses/{id} | Delete Verified From Address
[**Get-BetaDkimAttributes**](BetaNotificationsApi.md#Get-BetaDkimAttributes) | **GET** /verified-domains | Get DKIM Attributes
[**Get-BetaMailFromAttributes**](BetaNotificationsApi.md#Get-BetaMailFromAttributes) | **GET** /mail-from-attributes/{identity} | Get MAIL FROM Attributes
[**Get-BetaNotificationPreference**](BetaNotificationsApi.md#Get-BetaNotificationPreference) | **GET** /notification-preferences/{key} | Get Notification Preferences for tenant.
[**Get-BetaNotificationTemplate**](BetaNotificationsApi.md#Get-BetaNotificationTemplate) | **GET** /notification-templates/{id} | Get Notification Template By Id
[**Get-BetaNotificationsTemplateContext**](BetaNotificationsApi.md#Get-BetaNotificationsTemplateContext) | **GET** /notification-template-context | Get Notification Template Context
[**Get-BetaFromAddresses**](BetaNotificationsApi.md#Get-BetaFromAddresses) | **GET** /verified-from-addresses | List From Addresses
[**Get-BetaNotificationTemplateDefaults**](BetaNotificationsApi.md#Get-BetaNotificationTemplateDefaults) | **GET** /notification-template-defaults | List Notification Template Defaults
[**Get-BetaNotificationTemplates**](BetaNotificationsApi.md#Get-BetaNotificationTemplates) | **GET** /notification-templates | List Notification Templates
[**Send-BetaMailFromAttributes**](BetaNotificationsApi.md#Send-BetaMailFromAttributes) | **PUT** /mail-from-attributes | Change MAIL FROM domain
[**Send-BetaNotificationPreference**](BetaNotificationsApi.md#Send-BetaNotificationPreference) | **PUT** /notification-preferences/{key} | Overwrite the preferences for the given notification key.
[**Send-BetaTestNotification**](BetaNotificationsApi.md#Send-BetaTestNotification) | **POST** /send-test-notification | Send Test Notification


<a name="New-BetaDomainDkim"></a>
# **New-BetaDomainDkim**
> DomainStatusDto New-BetaDomainDkim<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-DomainAddress] <PSCustomObject><br>

Verify domain address via DKIM

Create a domain to be verified via DKIM (DomainKeys Identified Mail)

### Example
```powershell
$DomainAddress = Initialize-DomainAddress -Domain "sailpoint.com" # DomainAddress | 

# Verify domain address via DKIM
try {
    $Result = New-BetaDomainDkim -DomainAddress $DomainAddress
} catch {
    Write-Host ("Exception occurred when calling New-BetaDomainDkim: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **DomainAddress** | [**DomainAddress**](DomainAddress.md)|  | 

### Return type

[**DomainStatusDto**](DomainStatusDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaNotificationTemplate"></a>
# **New-BetaNotificationTemplate**
> TemplateDto New-BetaNotificationTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateDto] <PSCustomObject><br>

Create Notification Template

This creates a template for your site.   You can also use this endpoint to update a template.  First, copy the response body from the [get notification template endpoint](https://developer.sailpoint.com/idn/api/beta/get-notification-template) for a template you wish to update and paste it into the request body for this endpoint.   Modify the fields you want to change and submit the POST request when ready.

### Example
```powershell
$TemplateDto = Initialize-TemplateDto -Key "cloud_manual_work_item_summary" -Name "Task Manager Subscription" -Medium "EMAIL" -Locale "en" -Subject "You have $numberOfPendingTasks $taskTasks to complete in ${__global.productName}." -Header "MyHeader" -Body "Please go to the task manager" -Footer "MyFooter" -VarFrom "$__global.emailFromAddress" -ReplyTo "$__global.emailFromAddress" -Description "Daily digest - sent if number of outstanding tasks for task owner > 0" -Id "c17bea3a-574d-453c-9e04-4365fbf5af0b" -Created (Get-Date) -Modified (Get-Date) # TemplateDto | 

# Create Notification Template
try {
    $Result = New-BetaNotificationTemplate -TemplateDto $TemplateDto
} catch {
    Write-Host ("Exception occurred when calling New-BetaNotificationTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TemplateDto** | [**TemplateDto**](TemplateDto.md)|  | 

### Return type

[**TemplateDto**](TemplateDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="New-BetaVerifiedFromAddress"></a>
# **New-BetaVerifiedFromAddress**
> EmailStatusDto New-BetaVerifiedFromAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-EmailStatusDto] <PSCustomObject><br>

Create Verified From Address

Create a new sender email address and initiate verification process.

### Example
```powershell
$EmailStatusDto = Initialize-EmailStatusDto -Id "MyId" -Email "sender@example.com" -VerificationStatus "PENDING" # EmailStatusDto | 

# Create Verified From Address
try {
    $Result = New-BetaVerifiedFromAddress -EmailStatusDto $EmailStatusDto
} catch {
    Write-Host ("Exception occurred when calling New-BetaVerifiedFromAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **EmailStatusDto** | [**EmailStatusDto**](EmailStatusDto.md)|  | 

### Return type

[**EmailStatusDto**](EmailStatusDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaNotificationTemplatesInBulk"></a>
# **Remove-BetaNotificationTemplatesInBulk**
> void Remove-BetaNotificationTemplatesInBulk<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-TemplateBulkDeleteDto] <PSCustomObject[]><br>

Bulk Delete Notification Templates

This lets you bulk delete templates that you previously created for your site. Since this is a beta feature, you can only delete a subset of your notifications, i.e. ones that show up in the list call.

### Example
```powershell
$TemplateBulkDeleteDto = Initialize-TemplateBulkDeleteDto -Key "cloud_manual_work_item_summary" -Medium "EMAIL" -Locale "en" # TemplateBulkDeleteDto[] | 

# Bulk Delete Notification Templates
try {
    $Result = Remove-BetaNotificationTemplatesInBulk -TemplateBulkDeleteDto $TemplateBulkDeleteDto
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaNotificationTemplatesInBulk: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **TemplateBulkDeleteDto** | [**TemplateBulkDeleteDto[]**](TemplateBulkDeleteDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Remove-BetaVerifiedFromAddress"></a>
# **Remove-BetaVerifiedFromAddress**
> void Remove-BetaVerifiedFromAddress<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Delete Verified From Address

Delete a verified sender email address

### Example
```powershell
$Id = "MyId" # String | 

# Delete Verified From Address
try {
    $Result = Remove-BetaVerifiedFromAddress -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Remove-BetaVerifiedFromAddress: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaDkimAttributes"></a>
# **Get-BetaDkimAttributes**
> DkimAttributes[] Get-BetaDkimAttributes<br>

Get DKIM Attributes

Retrieve DKIM (DomainKeys Identified Mail) attributes for all your tenants' AWS SES identities. Limits retrieval to 100 identities per call.

### Example
```powershell

# Get DKIM Attributes
try {
    $Result = Get-BetaDkimAttributes
} catch {
    Write-Host ("Exception occurred when calling Get-BetaDkimAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DkimAttributes[]**](DkimAttributes.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaMailFromAttributes"></a>
# **Get-BetaMailFromAttributes**
> MailFromAttributes Get-BetaMailFromAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get MAIL FROM Attributes

Retrieve MAIL FROM attributes for a given AWS SES identity.

### Example
```powershell
$Id = "bobsmith@sailpoint.com" # String | Returns the MX and TXT record to be put in your DNS, as well as the MAIL FROM domain status

# Get MAIL FROM Attributes
try {
    $Result = Get-BetaMailFromAttributes -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaMailFromAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Returns the MX and TXT record to be put in your DNS, as well as the MAIL FROM domain status | 

### Return type

[**MailFromAttributes**](MailFromAttributes.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNotificationPreference"></a>
# **Get-BetaNotificationPreference**
> PreferencesDto Get-BetaNotificationPreference<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>

Get Notification Preferences for tenant.

Returns the notification preferences for tenant.  Note that if the key doesn't exist, then a 404 will be returned. Request will require the following legacy roles:  ORG_ADMIN and API

### Example
```powershell
$Key = "MyKey" # String | The notification key.

# Get Notification Preferences for tenant.
try {
    $Result = Get-BetaNotificationPreference -Key $Key
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNotificationPreference: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Key** | **String**| The notification key. | 

### Return type

[**PreferencesDto**](PreferencesDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNotificationTemplate"></a>
# **Get-BetaNotificationTemplate**
> TemplateDto[] Get-BetaNotificationTemplate<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Id] <String><br>

Get Notification Template By Id

This gets a template that you have modified for your site by Id.

### Example
```powershell
$Id = "c17bea3a-574d-453c-9e04-4365fbf5af0b" # String | Id of the Notification Template

# Get Notification Template By Id
try {
    $Result = Get-BetaNotificationTemplate -Id $Id
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNotificationTemplate: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Id** | **String**| Id of the Notification Template | 

### Return type

[**TemplateDto[]**](TemplateDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNotificationsTemplateContext"></a>
# **Get-BetaNotificationsTemplateContext**
> NotificationTemplateContext[] Get-BetaNotificationsTemplateContext<br>

Get Notification Template Context

The notification service (Hermes) maintains metadata to construct the notification templates or supply any information during the event propagation.  The data-store where this information is retrieved is  called ""Global Context"" (a.k.a. notification template context). It defines a set of attributes  that will be available per tenant (organization).  Regarding authorization, the access token contains the tenant and will grant access to the one requested. Requires the following security scope:  idn:notification-templates:read

### Example
```powershell

# Get Notification Template Context
try {
    $Result = Get-BetaNotificationsTemplateContext
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNotificationsTemplateContext: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NotificationTemplateContext[]**](NotificationTemplateContext.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaFromAddresses"></a>
# **Get-BetaFromAddresses**
> EmailStatusDto[] Get-BetaFromAddresses<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Count] <System.Nullable[Boolean]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Sorters] <String><br>

List From Addresses

Retrieve a list of sender email addresses and their verification statuses

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "email eq "john.doe@company.com"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **email**: *eq, co, ge, le, sw* (optional)
$Sorters = "email" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **email** (optional)

# List From Addresses
try {
    $Result = Get-BetaFromAddresses -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaFromAddresses: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Count** | **Boolean**| If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count&#x3D;true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to $false]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **email**: *eq, co, ge, le, sw* | [optional] 
 **Sorters** | **String**| Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **email** | [optional] 

### Return type

[**EmailStatusDto[]**](EmailStatusDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNotificationTemplateDefaults"></a>
# **Get-BetaNotificationTemplateDefaults**
> TemplateDtoDefault[] Get-BetaNotificationTemplateDefaults<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Notification Template Defaults

This lists the default templates used for notifications, such as emails from IdentityNow. Since this is a beta feature, it doesn't include all the templates.

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Filters = "MyFilters" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **key**: *eq, in, co, sw*  **medium**: *eq, co, sw*  **locale**: *eq, co, sw* (optional)

# List Notification Template Defaults
try {
    $Result = Get-BetaNotificationTemplateDefaults -Limit $Limit -Offset $Offset -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNotificationTemplateDefaults: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **key**: *eq, in, co, sw*  **medium**: *eq, co, sw*  **locale**: *eq, co, sw* | [optional] 

### Return type

[**TemplateDtoDefault[]**](TemplateDtoDefault.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Get-BetaNotificationTemplates"></a>
# **Get-BetaNotificationTemplates**
> TemplateDto[] Get-BetaNotificationTemplates<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Limit] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Offset] <System.Nullable[Int32]><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Filters] <String><br>

List Notification Templates

This lists the templates that you have modified for your site. Since this is a beta feature, it doesn't include all your modified templates.

### Example
```powershell
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Filters = "medium eq "EMAIL"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **key**: *eq, in, co, sw*  **medium**: *eq, co, sw*  **locale**: *eq, co, sw* (optional)

# List Notification Templates
try {
    $Result = Get-BetaNotificationTemplates -Limit $Limit -Offset $Offset -Filters $Filters
} catch {
    Write-Host ("Exception occurred when calling Get-BetaNotificationTemplates: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Limit** | **Int32**| Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 250]
 **Offset** | **Int32**| Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. | [optional] [default to 0]
 **Filters** | **String**| Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **key**: *eq, in, co, sw*  **medium**: *eq, co, sw*  **locale**: *eq, co, sw* | [optional] 

### Return type

[**TemplateDto[]**](TemplateDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-BetaMailFromAttributes"></a>
# **Send-BetaMailFromAttributes**
> MailFromAttributes Send-BetaMailFromAttributes<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-MailFromAttributesDto] <PSCustomObject><br>

Change MAIL FROM domain

Change the MAIL FROM domain of an AWS SES email identity and provide the MX and TXT records to be placed in the caller's DNS

### Example
```powershell
$MailFromAttributesDto = Initialize-MailFromAttributesDto -Identity "BobSmith@sailpoint.com" -MailFromDomain "example.sailpoint.com" # MailFromAttributesDto | 

# Change MAIL FROM domain
try {
    $Result = Send-BetaMailFromAttributes -MailFromAttributesDto $MailFromAttributesDto
} catch {
    Write-Host ("Exception occurred when calling Send-BetaMailFromAttributes: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **MailFromAttributesDto** | [**MailFromAttributesDto**](MailFromAttributesDto.md)|  | 

### Return type

[**MailFromAttributes**](MailFromAttributes.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-BetaNotificationPreference"></a>
# **Send-BetaNotificationPreference**
> PreferencesDto Send-BetaNotificationPreference<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-Key] <String><br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-PreferencesDto] <PSCustomObject><br>

Overwrite the preferences for the given notification key.

In the notification world, a notification flows through these salient stages -   1. Interest matching,   2. Preferences   3. Template Rendering.   The default notification preferences make up a part of the second stage, along with user preferences (which is a future goal). The expectation is for  admins to be able to set default preferences for their org, like opting in to or out of certain notifications, and configuring future preferences as  we tack on more features. The key in the Dto is not necessary but if it is provided and doesn't match the key in the URI, then a 400 will be thrown.  Request will require the following legacy roles:  ORG_ADMIN and API

### Example
```powershell
$Key = "MyKey" # String | The notification key.
$PreferencesDto = Initialize-PreferencesDto -Key "cloud_manual_work_item_summary" -Mediums "EMAIL" -Modified (Get-Date) # PreferencesDto | 

# Overwrite the preferences for the given notification key.
try {
    $Result = Send-BetaNotificationPreference -Key $Key -PreferencesDto $PreferencesDto
} catch {
    Write-Host ("Exception occurred when calling Send-BetaNotificationPreference: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **Key** | **String**| The notification key. | 
 **PreferencesDto** | [**PreferencesDto**](PreferencesDto.md)|  | 

### Return type

[**PreferencesDto**](PreferencesDto.md) (PSCustomObject)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

<a name="Send-BetaTestNotification"></a>
# **Send-BetaTestNotification**
> void Send-BetaTestNotification<br>
> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[-SendTestNotificationRequestDto] <PSCustomObject><br>

Send Test Notification

Send a Test Notification

### Example
```powershell
$SendTestNotificationRequestDto = Initialize-SendTestNotificationRequestDto -Key "cloud_manual_work_item_summary" -Medium "EMAIL" -Context # SendTestNotificationRequestDto | 

# Send Test Notification
try {
    $Result = Send-BetaTestNotification -SendTestNotificationRequestDto $SendTestNotificationRequestDto
} catch {
    Write-Host ("Exception occurred when calling Send-BetaTestNotification: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **SendTestNotificationRequestDto** | [**SendTestNotificationRequestDto**](SendTestNotificationRequestDto.md)|  | 

### Return type

void (empty response body)

### Authorization

[UserContextAuth](../README.md#UserContextAuth), [UserContextAuth](../README.md#UserContextAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

