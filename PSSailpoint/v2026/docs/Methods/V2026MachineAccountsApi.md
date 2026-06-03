---
id: v2026-machine-accounts
title: MachineAccounts
pagination_label: MachineAccounts
sidebar_label: MachineAccounts
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccounts', 'V2026MachineAccounts'] 
slug: /tools/sdk/powershell/v2026/methods/machine-accounts
tags: ['SDK', 'Software Development Kit', 'MachineAccounts', 'V2026MachineAccounts']
---

# MachineAccounts
   
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2026*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2026MachineAccountSubtype**](#create-machine-account-subtype) | **POST** `/sources/{sourceId}/subtypes` | Create subtype
[**Remove-V2026MachineAccountSubtypeByTechnicalName**](#delete-machine-account-subtype-by-technical-name) | **DELETE** `/sources/{sourceId}/subtypes/{technicalName}` | Delete subtype
[**Get-V2026MachineAccount**](#get-machine-account) | **GET** `/machine-accounts/{id}` | Get machine account details
[**Get-V2026MachineAccountSubtypeApprovalConfig**](#get-machine-account-subtype-approval-config) | **GET** `/source-subtypes/{subtypeId}/machine-config` | Machine Subtype Approval Config
[**Get-V2026MachineAccountSubtypeById**](#get-machine-account-subtype-by-id) | **GET** `/sources/subtypes/{subtypeId}` | Retrieve subtype by subtype id
[**Get-V2026MachineAccountSubtypeByTechnicalName**](#get-machine-account-subtype-by-technical-name) | **GET** `/sources/{sourceId}/subtypes/{technicalName}` | Retrieve subtype by source and technicalName
[**Get-V2026MachineAccountSubtypes**](#list-machine-account-subtypes) | **GET** `/sources/{sourceId}/subtypes` | Retrieve all subtypes by source
[**Get-V2026MachineAccounts**](#list-machine-accounts) | **GET** `/machine-accounts` | List machine accounts
[**Invoke-V2026LoadBulkSourceSubtypes**](#load-bulk-source-subtypes) | **POST** `/source-subtypes/bulk-retrieve` | Bulk Retrieve of Source Subtypes
[**Update-V2026MachineAccountSubtypeByTechnicalName**](#patch-machine-account-subtype-by-technical-name) | **PATCH** `/sources/{sourceId}/subtypes/{technicalName}` | Patch subtype
[**Update-V2026MachineAccount**](#update-machine-account) | **PATCH** `/machine-accounts/{id}` | Update machine account details
[**Update-V2026MachineAccountSubtypeApprovalConfig**](#update-machine-account-subtype-approval-config) | **PATCH** `/source-subtypes/{subtypeId}/machine-config` | Machine Subtype Approval Config


## create-machine-account-subtype
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Create a new machine account subtype for a source.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/create-machine-account-subtype)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SourceId | **String** | True  | The ID of the source.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
 Body  | CreateMachineAccountSubtypeRequest | [**CreateMachineAccountSubtypeRequest**](../models/create-machine-account-subtype-request) | True  | 

### Return type
[**SourceSubtype**](../models/source-subtype)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
201 | Created machine account subtype. | SourceSubtype
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SourceId = "6d0458373bec4b4b80460992b76016da" # String | The ID of the source.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$CreateMachineAccountSubtypeRequest = @"{technicalName=foo, displayName=Mr Foo, description=fighters, type=MACHINE}"@

# Create subtype

try {
    $Result = ConvertFrom-V2026JsonToCreateMachineAccountSubtypeRequest -Json $CreateMachineAccountSubtypeRequest
    New-V2026MachineAccountSubtype -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental -CreateMachineAccountSubtypeRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-V2026MachineAccountSubtype -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental -CreateMachineAccountSubtypeRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-V2026MachineAccountSubtype"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-machine-account-subtype-by-technical-name
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Delete a machine account subtype by source ID and technical name.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/delete-machine-account-subtype-by-technical-name)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SourceId | **String** | True  | The ID of the source.
Path   | TechnicalName | **String** | True  | The technical name of the subtype.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | Subtype deleted successfully. | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$SourceId = "6d0458373bec4b4b80460992b76016da" # String | The ID of the source.
$TechnicalName = "foo" # String | The technical name of the subtype.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Delete subtype

try {
    Remove-V2026MachineAccountSubtypeByTechnicalName -SourceId $SourceId -TechnicalName $TechnicalName -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Remove-V2026MachineAccountSubtypeByTechnicalName -SourceId $SourceId -TechnicalName $TechnicalName -XSailPointExperimental $XSailPointExperimental  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-V2026MachineAccountSubtypeByTechnicalName"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-machine-account
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Use this API to return the details for a single machine account by its ID.  

[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-machine-account)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | Machine Account ID.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.

### Return type
[**MachineAccount**](../models/machine-account)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Machine Account object. | MachineAccount
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Machine Account ID.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get machine account details

try {
    Get-V2026MachineAccount -Id $Id -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Get-V2026MachineAccount -Id $Id -XSailPointExperimental $XSailPointExperimental  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026MachineAccount"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-machine-account-subtype-approval-config
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
This endpoint retrieves the approval configuration for machine account creation and deletion at the machine subtype level. By providing a specific subtypeId in the path, clients can fetch the approval rules and settings (such as required approvers and comments policy) that govern account creation and deletion for that particular machine subtype. The response includes a MachineAccountSubtypeConfigDto object detailing these configurations, enabling clients to understand or display the approval workflow required for creating and deleting machine accounts of the given subtype. Use this endpoint to get machine subtype level approval config for account creation and deletion.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-machine-account-subtype-approval-config)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
Path   | SubtypeId | **String** | True  | machine subtype id.

### Return type
[**MachineAccountSubtypeConfigDto**](../models/machine-account-subtype-config-dto)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Responds with a MachineAccountSubtypeConfigDto for machine account creation and deletion approval config by subtypeId. | MachineAccountSubtypeConfigDto
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SubtypeId = "ef38f94347e94562b5bb8424a56498d8" # String | machine subtype id.

# Machine Subtype Approval Config

try {
    Get-V2026MachineAccountSubtypeApprovalConfig -XSailPointExperimental $XSailPointExperimental -SubtypeId $SubtypeId 
    
    # Below is a request that includes all optional parameters
    # Get-V2026MachineAccountSubtypeApprovalConfig -XSailPointExperimental $XSailPointExperimental -SubtypeId $SubtypeId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026MachineAccountSubtypeApprovalConfig"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-machine-account-subtype-by-id
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Get a machine account subtype by its unique ID.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-machine-account-subtype-by-id)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SubtypeId | **String** | True  | The ID of the machine account subtype.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.

### Return type
[**SourceSubtype**](../models/source-subtype)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Machine account subtype object. | SourceSubtype
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$SubtypeId = "43bdd144-4b17-4fce-a744-17c7fd3e717b" # String | The ID of the machine account subtype.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Retrieve subtype by subtype id

try {
    Get-V2026MachineAccountSubtypeById -SubtypeId $SubtypeId -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Get-V2026MachineAccountSubtypeById -SubtypeId $SubtypeId -XSailPointExperimental $XSailPointExperimental  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026MachineAccountSubtypeById"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-machine-account-subtype-by-technical-name
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Get a machine account subtype by source ID and technical name.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-machine-account-subtype-by-technical-name)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SourceId | **String** | True  | The ID of the source.
Path   | TechnicalName | **String** | True  | The technical name of the subtype.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.

### Return type
[**SourceSubtype**](../models/source-subtype)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Machine account subtype object. | SourceSubtype
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$SourceId = "6d0458373bec4b4b80460992b76016da" # String | The ID of the source.
$TechnicalName = "foo" # String | The technical name of the subtype.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Retrieve subtype by source and technicalName

try {
    Get-V2026MachineAccountSubtypeByTechnicalName -SourceId $SourceId -TechnicalName $TechnicalName -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Get-V2026MachineAccountSubtypeByTechnicalName -SourceId $SourceId -TechnicalName $TechnicalName -XSailPointExperimental $XSailPointExperimental  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026MachineAccountSubtypeByTechnicalName"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## list-machine-account-subtypes
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Get all machine account subtypes for a given source.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/list-machine-account-subtypes)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SourceId | **String** | True  | The ID of the source.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
  Query | Filters | **String** |   (optional) | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **displayName**: *eq, sw*  **technicalName**: *eq, sw*
  Query | Sorters | **String** |   (optional) | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **displayName, technicalName**
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Limit | **Int32** |   (optional) (default to 250) | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Offset | **Int32** |   (optional) (default to 0) | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

### Return type
[**SourceSubtype[]**](../models/source-subtype)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | List of machine account subtypes. | SourceSubtype[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$SourceId = "6d0458373bec4b4b80460992b76016da" # String | The ID of the source.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Filters = 'displayName eq "sail"' # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **displayName**: *eq, sw*  **technicalName**: *eq, sw* (optional)
$Sorters = "displayName" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **displayName, technicalName** (optional)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)

# Retrieve all subtypes by source

try {
    Get-V2026MachineAccountSubtypes -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Get-V2026MachineAccountSubtypes -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental -Filters $Filters -Sorters $Sorters -Count $Count -Limit $Limit -Offset $Offset  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026MachineAccountSubtypes"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## list-machine-accounts
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
This returns a list of machine accounts.  

[API Spec](https://developer.sailpoint.com/docs/api/v2026/list-machine-accounts)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
  Query | Limit | **Int32** |   (optional) (default to 250) | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Offset | **Int32** |   (optional) (default to 0) | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Filters | **String** |   (optional) | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, in, sw*  **nativeIdentity**: *eq, in, sw*  **uuid**: *eq, in*  **description**: *eq, in, sw*  **machineIdentity.id**: *eq, in*  **machineIdentity.name**: *eq, in, sw*  **subtype.technicalName**: *eq, in, sw*  **subtype.displayName**: *eq, in, sw*  **accessType**: *eq, in, sw*  **environment**: *eq, in, sw*  **ownerIdentity**: *eq, in*  **ownerIdentity.id**: *eq, in*  **ownerIdentity.name**: *eq, in, sw*  **manuallyCorrelated**: *eq*  **enabled**: *eq*  **locked**: *eq*  **hasEntitlements**: *eq*  **attributes**: *eq*  **source.id**: *eq, in*  **source.name**: *eq, in, sw*  **created**: *eq, gt, lt, ge, le*  **modified**: *eq, gt, lt, ge, le*
  Query | Sorters | **String** |   (optional) | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, nativeIdentity, ownerIdentity, uuid, description, machineIdentity.id, machineIdentity.name, subtype.technicalName, subtype.displayName, accessType, environment, manuallyCorrelated, enabled, locked, hasEntitlements, ownerIdentity.id, ownerIdentity.name, attributes, source.id, source.name, created, modified**

### Return type
[**MachineAccount[]**](../models/machine-account)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | List of machine account objects | MachineAccount[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = 'hasEntitlements eq true' # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, in, sw*  **nativeIdentity**: *eq, in, sw*  **uuid**: *eq, in*  **description**: *eq, in, sw*  **machineIdentity.id**: *eq, in*  **machineIdentity.name**: *eq, in, sw*  **subtype.technicalName**: *eq, in, sw*  **subtype.displayName**: *eq, in, sw*  **accessType**: *eq, in, sw*  **environment**: *eq, in, sw*  **ownerIdentity**: *eq, in*  **ownerIdentity.id**: *eq, in*  **ownerIdentity.name**: *eq, in, sw*  **manuallyCorrelated**: *eq*  **enabled**: *eq*  **locked**: *eq*  **hasEntitlements**: *eq*  **attributes**: *eq*  **source.id**: *eq, in*  **source.name**: *eq, in, sw*  **created**: *eq, gt, lt, ge, le*  **modified**: *eq, gt, lt, ge, le* (optional)
$Sorters = "id,name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, nativeIdentity, ownerIdentity, uuid, description, machineIdentity.id, machineIdentity.name, subtype.technicalName, subtype.displayName, accessType, environment, manuallyCorrelated, enabled, locked, hasEntitlements, ownerIdentity.id, ownerIdentity.name, attributes, source.id, source.name, created, modified** (optional)

# List machine accounts

try {
    Get-V2026MachineAccounts -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Get-V2026MachineAccounts -XSailPointExperimental $XSailPointExperimental -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026MachineAccounts"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## load-bulk-source-subtypes
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
This endpoint retrieves the subtypes for given subtypeIds.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/load-bulk-source-subtypes)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
 Body  | RequestBody | **[]String** | True  | 

### Return type
[**SourceSubtypeWithSource[]**](../models/source-subtype-with-source)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | List of source subtypes. | SourceSubtypeWithSource[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$RequestBody = "38453251-6be2-5f8f-df93-5ce19e295838" # String[] | 
 $RequestBody = @""@ # String[] | 
 

# Bulk Retrieve of Source Subtypes

try {
    $Result = ConvertFrom-V2026JsonToRequestBody -Json $RequestBody
    Invoke-V2026LoadBulkSourceSubtypes -XSailPointExperimental $XSailPointExperimental -RequestBody $Result 
    
    # Below is a request that includes all optional parameters
    # Invoke-V2026LoadBulkSourceSubtypes -XSailPointExperimental $XSailPointExperimental -RequestBody $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-V2026LoadBulkSourceSubtypes"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-machine-account-subtype-by-technical-name
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Update fields of a machine account subtype by source ID and technical name.
Patchable fields include: `displayName`, `description`.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/patch-machine-account-subtype-by-technical-name)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SourceId | **String** | True  | The ID of the source.
Path   | TechnicalName | **String** | True  | The technical name of the subtype.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
 Body  | RequestBody | [**[]SystemCollectionsHashtable**](https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0) | True  | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

### Return type
[**SourceSubtype**](../models/source-subtype)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Updated machine account subtype. | SourceSubtype
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json-patch+json
- **Accept**: application/json

### Example
```powershell
$SourceId = "6d0458373bec4b4b80460992b76016da" # String | The ID of the source.
$TechnicalName = "foo" # String | The technical name of the subtype.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$RequestBody =  # SystemCollectionsHashtable[] | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.
 $RequestBody = @"[{op=replace, path=/displayName, value=Test New DisplayName}]"@ # SystemCollectionsHashtable[] | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.
 

# Patch subtype

try {
    $Result = ConvertFrom-V2026JsonToRequestBody -Json $RequestBody
    Update-V2026MachineAccountSubtypeByTechnicalName -SourceId $SourceId -TechnicalName $TechnicalName -XSailPointExperimental $XSailPointExperimental -RequestBody $Result 
    
    # Below is a request that includes all optional parameters
    # Update-V2026MachineAccountSubtypeByTechnicalName -SourceId $SourceId -TechnicalName $TechnicalName -XSailPointExperimental $XSailPointExperimental -RequestBody $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-V2026MachineAccountSubtypeByTechnicalName"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-machine-account
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Use this API to update machine accounts details. 


[API Spec](https://developer.sailpoint.com/docs/api/v2026/update-machine-account)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | Machine Account ID.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
 Body  | RequestBody | [**[]SystemCollectionsHashtable**](https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0) | True  | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The following fields are patchable:           * description           * ownerIdentity           * subType           * accessType           * environment           * attributes           * classificationMethod           * manuallyEdited           * nativeIdentity           * uuid           * source           * manuallyCorrelated           * enabled           * locked           * hasEntitlements           * connectorAttributes

### Return type
[**MachineAccount**](../models/machine-account)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Updated Machine Account object. | MachineAccount
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json-patch+json
- **Accept**: application/json

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Machine Account ID.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$RequestBody =  # SystemCollectionsHashtable[] | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The following fields are patchable:           * description           * ownerIdentity           * subType           * accessType           * environment           * attributes           * classificationMethod           * manuallyEdited           * nativeIdentity           * uuid           * source           * manuallyCorrelated           * enabled           * locked           * hasEntitlements           * connectorAttributes
 $RequestBody = @"[{op=add, path=/environment, value=test}]"@ # SystemCollectionsHashtable[] | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The following fields are patchable:           * description           * ownerIdentity           * subType           * accessType           * environment           * attributes           * classificationMethod           * manuallyEdited           * nativeIdentity           * uuid           * source           * manuallyCorrelated           * enabled           * locked           * hasEntitlements           * connectorAttributes
 

# Update machine account details

try {
    $Result = ConvertFrom-V2026JsonToRequestBody -Json $RequestBody
    Update-V2026MachineAccount -Id $Id -XSailPointExperimental $XSailPointExperimental -RequestBody $Result 
    
    # Below is a request that includes all optional parameters
    # Update-V2026MachineAccount -Id $Id -XSailPointExperimental $XSailPointExperimental -RequestBody $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-V2026MachineAccount"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-machine-account-subtype-approval-config
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Updates the approval configuration for machine account deletion at the specified machine subtype level. This endpoint allows clients to modify approval rules and settings (such as required approvers and comments policy) for account creation and deletion workflows associated with a given subtypeId. Use this to customize or enforce approval requirements for creating and deleting machine accounts of a particular subtype.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/update-machine-account-subtype-approval-config)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
Path   | SubtypeId | **String** | True  | machine account subtype ID.
 Body  | JsonPatchOperation | [**[]JsonPatchOperation**](../models/json-patch-operation) | True  | The JSONPatch payload used to update the object.

### Return type
[**MachineAccountSubtypeConfigDto**](../models/machine-account-subtype-config-dto)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | This response indicates the PATCH operation succeeded and the API returns the updated MachineAccountSubtypeConfigDto object. | MachineAccountSubtypeConfigDto
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json-patch+json
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SubtypeId = "00eebcf881994e419d72e757fd30dc0e" # String | machine account subtype ID.
 $JsonPatchOperation = @"{
  "op" : "replace",
  "path" : "/description",
  "value" : "New description"
}"@ # JsonPatchOperation[] | The JSONPatch payload used to update the object.
 

# Machine Subtype Approval Config

try {
    $Result = ConvertFrom-V2026JsonToJsonPatchOperation -Json $JsonPatchOperation
    Update-V2026MachineAccountSubtypeApprovalConfig -XSailPointExperimental $XSailPointExperimental -SubtypeId $SubtypeId -JsonPatchOperation $Result 
    
    # Below is a request that includes all optional parameters
    # Update-V2026MachineAccountSubtypeApprovalConfig -XSailPointExperimental $XSailPointExperimental -SubtypeId $SubtypeId -JsonPatchOperation $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-V2026MachineAccountSubtypeApprovalConfig"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
