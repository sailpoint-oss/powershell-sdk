---
id: machine-accounts
title: MachineAccounts
pagination_label: MachineAccounts
sidebar_label: MachineAccounts
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccounts', 'MachineAccounts'] 
slug: /tools/sdk/powershell/machineaccountsv1/methods/machine-accounts
tags: ['SDK', 'Software Development Kit', 'MachineAccounts', 'MachineAccounts']
---

# MachineAccounts
   
  

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-MachineAccountSubtypeV1**](#create-machine-account-subtype-v1) | **POST** `/sources/v1/{sourceId}/subtypes` | Create subtype
[**Remove-MachineAccountSubtypeByTechnicalNameV1**](#delete-machine-account-subtype-by-technical-name-v1) | **DELETE** `/sources/v1/{sourceId}/subtypes/{technicalName}` | Delete subtype
[**Disable-MachineAccountsInBulkV1**](#disable-machine-accounts-in-bulk-v1) | **POST** `/machine-accounts/v1/bulk-disable` | Bulk disable machine accounts
[**Enable-MachineAccountsInBulkV1**](#enable-machine-accounts-in-bulk-v1) | **POST** `/machine-accounts/v1/bulk-enable` | Bulk enable machine accounts
[**Get-MachineAccountSubtypeApprovalConfigV1**](#get-machine-account-subtype-approval-config-v1) | **GET** `/source-subtypes/v1/{subtypeId}/machine-config` | Machine Subtype Approval Config
[**Get-MachineAccountSubtypeByIdV1**](#get-machine-account-subtype-by-id-v1) | **GET** `/sources/v1/subtypes/{subtypeId}` | Retrieve subtype by subtype id
[**Get-MachineAccountSubtypeByTechnicalNameV1**](#get-machine-account-subtype-by-technical-name-v1) | **GET** `/sources/v1/{sourceId}/subtypes/{technicalName}` | Retrieve subtype by source and technicalName
[**Get-MachineAccountV1**](#get-machine-account-v1) | **GET** `/machine-accounts/v1/{id}` | Get machine account details
[**Get-MachineAccountSubtypesV1**](#list-machine-account-subtypes-v1) | **GET** `/sources/v1/{sourceId}/subtypes` | Retrieve all subtypes by source
[**Get-MachineAccountsV1**](#list-machine-accounts-v1) | **GET** `/machine-accounts/v1` | List machine accounts
[**Invoke-LoadBulkSourceSubtypesV1**](#load-bulk-source-subtypes-v1) | **POST** `/source-subtypes/v1/bulk-retrieve` | Bulk Retrieve of Source Subtypes
[**Update-MachineAccountSubtypeByTechnicalNameV1**](#patch-machine-account-subtype-by-technical-name-v1) | **PATCH** `/sources/v1/{sourceId}/subtypes/{technicalName}` | Patch subtype
[**Invoke-ReloadMachineAccountsInBulkV1**](#reload-machine-accounts-in-bulk-v1) | **POST** `/machine-accounts/v1/bulk-reload` | Bulk reload machine accounts
[**Update-MachineAccountSubtypeApprovalConfigV1**](#update-machine-account-subtype-approval-config-v1) | **PATCH** `/source-subtypes/v1/{subtypeId}/machine-config` | Machine Subtype Approval Config
[**Update-MachineAccountV1**](#update-machine-account-v1) | **PATCH** `/machine-accounts/v1/{id}` | Update machine account details
[**Update-MachineAccountsInBulkV1**](#update-machine-accounts-in-bulk-v1) | **POST** `/machine-accounts/v1/bulk-update` | Bulk update machine accounts


## create-machine-account-subtype-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Create a new machine account subtype for a source.

[API Spec](https://developer.sailpoint.com/docs/api/v1/create-machine-account-subtype-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SourceId | **String** | True  | The ID of the source.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
 Body  | CreateMachineAccountSubtypeV1Request | [**CreateMachineAccountSubtypeV1Request**](../models/create-machine-account-subtype-v1-request) | True  | 

### Return type
[**Sourcesubtype**](../models/sourcesubtype)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
201 | Created machine account subtype. | Sourcesubtype
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$SourceId = "6d0458373bec4b4b80460992b76016da" # String | The ID of the source.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$CreateMachineAccountSubtypeV1Request = @"{"technicalName":"foo","displayName":"Mr Foo","description":"fighters","type":"MACHINE"}"@

# Create subtype

try {
    $Result = ConvertFrom-JsonToCreateMachineAccountSubtypeV1Request -Json $CreateMachineAccountSubtypeV1Request
    New-MachineAccountSubtypeV1 -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental -CreateMachineAccountSubtypeV1Request $Result 
    
    # Below is a request that includes all optional parameters
    # New-MachineAccountSubtypeV1 -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental -CreateMachineAccountSubtypeV1Request $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-MachineAccountSubtypeV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-machine-account-subtype-by-technical-name-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Delete a machine account subtype by source ID and technical name.

[API Spec](https://developer.sailpoint.com/docs/api/v1/delete-machine-account-subtype-by-technical-name-v1)

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
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

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
    Remove-MachineAccountSubtypeByTechnicalNameV1 -SourceId $SourceId -TechnicalName $TechnicalName -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Remove-MachineAccountSubtypeByTechnicalNameV1 -SourceId $SourceId -TechnicalName $TechnicalName -XSailPointExperimental $XSailPointExperimental  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-MachineAccountSubtypeByTechnicalNameV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## disable-machine-accounts-in-bulk-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Submits an asynchronous request to disable up to 100 machine accounts.

The response returns HTTP 202 Accepted with an **accountRequestId** task identifier. Use the account request APIs to track completion.

Callers without the **idn:mis-account:disable** right may still disable accounts they own. Non-owned IDs are excluded from the task.

[API Spec](https://developer.sailpoint.com/docs/api/v1/disable-machine-accounts-in-bulk-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
 Body  | Misbulkrequest | [**Misbulkrequest**](../models/misbulkrequest) | True  | 

### Return type
[**Accountrequestasyncresult**](../models/accountrequestasyncresult)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
202 | Bulk disable request accepted. | Accountrequestasyncresult
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Misbulkrequest = @""@

# Bulk disable machine accounts

try {
    $Result = ConvertFrom-JsonToMisbulkrequest -Json $Misbulkrequest
    Disable-MachineAccountsInBulkV1 -XSailPointExperimental $XSailPointExperimental -Misbulkrequest $Result 
    
    # Below is a request that includes all optional parameters
    # Disable-MachineAccountsInBulkV1 -XSailPointExperimental $XSailPointExperimental -Misbulkrequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Disable-MachineAccountsInBulkV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## enable-machine-accounts-in-bulk-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Submits an asynchronous request to enable up to 100 machine accounts.

The response returns HTTP 202 Accepted with an **accountRequestId** task identifier. Use the account request APIs to track completion.

Callers without the **idn:mis-account:enable** right may still enable accounts they own. Non-owned IDs are excluded from the task.

[API Spec](https://developer.sailpoint.com/docs/api/v1/enable-machine-accounts-in-bulk-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
 Body  | Misbulkrequest | [**Misbulkrequest**](../models/misbulkrequest) | True  | 

### Return type
[**Accountrequestasyncresult**](../models/accountrequestasyncresult)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
202 | Bulk enable request accepted. | Accountrequestasyncresult
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Misbulkrequest = @""@

# Bulk enable machine accounts

try {
    $Result = ConvertFrom-JsonToMisbulkrequest -Json $Misbulkrequest
    Enable-MachineAccountsInBulkV1 -XSailPointExperimental $XSailPointExperimental -Misbulkrequest $Result 
    
    # Below is a request that includes all optional parameters
    # Enable-MachineAccountsInBulkV1 -XSailPointExperimental $XSailPointExperimental -Misbulkrequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Enable-MachineAccountsInBulkV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-machine-account-subtype-approval-config-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
This endpoint retrieves the approval configuration for machine account creation and deletion at the machine subtype level. By providing a specific subtypeId in the path, clients can fetch the approval rules and settings (such as required approvers and comments policy) that govern account creation and deletion for that particular machine subtype. The response includes a MachineAccountSubtypeConfigDto object detailing these configurations, enabling clients to understand or display the approval workflow required for creating and deleting machine accounts of the given subtype. Use this endpoint to get machine subtype level approval config for account creation and deletion.

[API Spec](https://developer.sailpoint.com/docs/api/v1/get-machine-account-subtype-approval-config-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
Path   | SubtypeId | **String** | True  | machine subtype id.

### Return type
[**Machineaccountsubtypeconfigdto**](../models/machineaccountsubtypeconfigdto)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Responds with a MachineAccountSubtypeConfigDto for machine account creation and deletion approval config by subtypeId. | Machineaccountsubtypeconfigdto
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SubtypeId = "ef38f94347e94562b5bb8424a56498d8" # String | machine subtype id.

# Machine Subtype Approval Config

try {
    Get-MachineAccountSubtypeApprovalConfigV1 -XSailPointExperimental $XSailPointExperimental -SubtypeId $SubtypeId 
    
    # Below is a request that includes all optional parameters
    # Get-MachineAccountSubtypeApprovalConfigV1 -XSailPointExperimental $XSailPointExperimental -SubtypeId $SubtypeId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-MachineAccountSubtypeApprovalConfigV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-machine-account-subtype-by-id-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Get a machine account subtype by its unique ID.

[API Spec](https://developer.sailpoint.com/docs/api/v1/get-machine-account-subtype-by-id-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SubtypeId | **String** | True  | The ID of the machine account subtype.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.

### Return type
[**Sourcesubtype**](../models/sourcesubtype)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Machine account subtype object. | Sourcesubtype
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$SubtypeId = "43bdd144-4b17-4fce-a744-17c7fd3e717b" # String | The ID of the machine account subtype.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Retrieve subtype by subtype id

try {
    Get-MachineAccountSubtypeByIdV1 -SubtypeId $SubtypeId -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Get-MachineAccountSubtypeByIdV1 -SubtypeId $SubtypeId -XSailPointExperimental $XSailPointExperimental  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-MachineAccountSubtypeByIdV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-machine-account-subtype-by-technical-name-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Get a machine account subtype by source ID and technical name.

[API Spec](https://developer.sailpoint.com/docs/api/v1/get-machine-account-subtype-by-technical-name-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SourceId | **String** | True  | The ID of the source.
Path   | TechnicalName | **String** | True  | The technical name of the subtype.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.

### Return type
[**Sourcesubtype**](../models/sourcesubtype)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Machine account subtype object. | Sourcesubtype
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

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
    Get-MachineAccountSubtypeByTechnicalNameV1 -SourceId $SourceId -TechnicalName $TechnicalName -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Get-MachineAccountSubtypeByTechnicalNameV1 -SourceId $SourceId -TechnicalName $TechnicalName -XSailPointExperimental $XSailPointExperimental  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-MachineAccountSubtypeByTechnicalNameV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-machine-account-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Use this API to return the details for a single machine account by its ID.  

[API Spec](https://developer.sailpoint.com/docs/api/v1/get-machine-account-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | Machine Account ID.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.

### Return type
[**Machineaccount**](../models/machineaccount)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Machine Account object. | Machineaccount
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Machine Account ID.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")

# Get machine account details

try {
    Get-MachineAccountV1 -Id $Id -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Get-MachineAccountV1 -Id $Id -XSailPointExperimental $XSailPointExperimental  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-MachineAccountV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## list-machine-account-subtypes-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Get all machine account subtypes for a given source.

[API Spec](https://developer.sailpoint.com/docs/api/v1/list-machine-account-subtypes-v1)

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
[**Sourcesubtype[]**](../models/sourcesubtype)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | List of machine account subtypes. | Sourcesubtype[]
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$SourceId = "6d0458373bec4b4b80460992b76016da" # String | The ID of the source.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Filters = "displayName eq "sail"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **displayName**: *eq, sw*  **technicalName**: *eq, sw* (optional)
$Sorters = "displayName" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **displayName, technicalName** (optional)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)

# Retrieve all subtypes by source

try {
    Get-MachineAccountSubtypesV1 -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Get-MachineAccountSubtypesV1 -SourceId $SourceId -XSailPointExperimental $XSailPointExperimental -Filters $Filters -Sorters $Sorters -Count $Count -Limit $Limit -Offset $Offset  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-MachineAccountSubtypesV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## list-machine-accounts-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
This returns a list of machine accounts.  

[API Spec](https://developer.sailpoint.com/docs/api/v1/list-machine-accounts-v1)

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
[**Machineaccount[]**](../models/machineaccount)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | List of machine account objects | Machineaccount[]
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = "hasEntitlements eq true" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, in, sw*  **nativeIdentity**: *eq, in, sw*  **uuid**: *eq, in*  **description**: *eq, in, sw*  **machineIdentity.id**: *eq, in*  **machineIdentity.name**: *eq, in, sw*  **subtype.technicalName**: *eq, in, sw*  **subtype.displayName**: *eq, in, sw*  **accessType**: *eq, in, sw*  **environment**: *eq, in, sw*  **ownerIdentity**: *eq, in*  **ownerIdentity.id**: *eq, in*  **ownerIdentity.name**: *eq, in, sw*  **manuallyCorrelated**: *eq*  **enabled**: *eq*  **locked**: *eq*  **hasEntitlements**: *eq*  **attributes**: *eq*  **source.id**: *eq, in*  **source.name**: *eq, in, sw*  **created**: *eq, gt, lt, ge, le*  **modified**: *eq, gt, lt, ge, le* (optional)
$Sorters = "id,name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, nativeIdentity, ownerIdentity, uuid, description, machineIdentity.id, machineIdentity.name, subtype.technicalName, subtype.displayName, accessType, environment, manuallyCorrelated, enabled, locked, hasEntitlements, ownerIdentity.id, ownerIdentity.name, attributes, source.id, source.name, created, modified** (optional)

# List machine accounts

try {
    Get-MachineAccountsV1 -XSailPointExperimental $XSailPointExperimental 
    
    # Below is a request that includes all optional parameters
    # Get-MachineAccountsV1 -XSailPointExperimental $XSailPointExperimental -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-MachineAccountsV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## load-bulk-source-subtypes-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
This endpoint retrieves the subtypes for given subtypeIds.

[API Spec](https://developer.sailpoint.com/docs/api/v1/load-bulk-source-subtypes-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
 Body  | RequestBody | **[]String** | True  | 

### Return type
[**Sourcesubtypewithsource[]**](../models/sourcesubtypewithsource)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | List of source subtypes. | Sourcesubtypewithsource[]
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

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
    $Result = ConvertFrom-JsonToRequestBody -Json $RequestBody
    Invoke-LoadBulkSourceSubtypesV1 -XSailPointExperimental $XSailPointExperimental -RequestBody $Result 
    
    # Below is a request that includes all optional parameters
    # Invoke-LoadBulkSourceSubtypesV1 -XSailPointExperimental $XSailPointExperimental -RequestBody $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-LoadBulkSourceSubtypesV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-machine-account-subtype-by-technical-name-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Update fields of a machine account subtype by source ID and technical name.
Patchable fields include: `displayName`, `description`.

[API Spec](https://developer.sailpoint.com/docs/api/v1/patch-machine-account-subtype-by-technical-name-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SourceId | **String** | True  | The ID of the source.
Path   | TechnicalName | **String** | True  | The technical name of the subtype.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
 Body  | RequestBody | [**[]SystemCollectionsHashtable**](../models/system-collections-hashtable) | True  | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.

### Return type
[**Sourcesubtype**](../models/sourcesubtype)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Updated machine account subtype. | Sourcesubtype
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: application/json-patch+json
- **Accept**: application/json

### Example
```powershell
$SourceId = "6d0458373bec4b4b80460992b76016da" # String | The ID of the source.
$TechnicalName = "foo" # String | The technical name of the subtype.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$RequestBody =  # SystemCollectionsHashtable[] | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.
 $RequestBody = @"[{"op":"replace","path":"/displayName","value":"Test New DisplayName"}]"@ # SystemCollectionsHashtable[] | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard.
 

# Patch subtype

try {
    $Result = ConvertFrom-JsonToRequestBody -Json $RequestBody
    Update-MachineAccountSubtypeByTechnicalNameV1 -SourceId $SourceId -TechnicalName $TechnicalName -XSailPointExperimental $XSailPointExperimental -RequestBody $Result 
    
    # Below is a request that includes all optional parameters
    # Update-MachineAccountSubtypeByTechnicalNameV1 -SourceId $SourceId -TechnicalName $TechnicalName -XSailPointExperimental $XSailPointExperimental -RequestBody $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-MachineAccountSubtypeByTechnicalNameV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## reload-machine-accounts-in-bulk-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Queues a reload for up to 100 machine accounts in one request.

The response uses HTTP 207 Multi-Status. Each array element reports the result for one requested ID in its **status** field.

Callers without the **idn:mis-account:reload** right may still reload accounts they own.

[API Spec](https://developer.sailpoint.com/docs/api/v1/reload-machine-accounts-in-bulk-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
 Body  | Misbulkrequest | [**Misbulkrequest**](../models/misbulkrequest) | True  | 

### Return type
[**Misbulkresponse[]**](../models/misbulkresponse)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
207 | Per-account bulk reload results. | Misbulkresponse[]
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Misbulkrequest = @""@

# Bulk reload machine accounts

try {
    $Result = ConvertFrom-JsonToMisbulkrequest -Json $Misbulkrequest
    Invoke-ReloadMachineAccountsInBulkV1 -XSailPointExperimental $XSailPointExperimental -Misbulkrequest $Result 
    
    # Below is a request that includes all optional parameters
    # Invoke-ReloadMachineAccountsInBulkV1 -XSailPointExperimental $XSailPointExperimental -Misbulkrequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-ReloadMachineAccountsInBulkV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-machine-account-subtype-approval-config-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Updates the approval configuration for machine account deletion at the specified machine subtype level. This endpoint allows clients to modify approval rules and settings (such as required approvers and comments policy) for account creation and deletion workflows associated with a given subtypeId. Use this to customize or enforce approval requirements for creating and deleting machine accounts of a particular subtype.

[API Spec](https://developer.sailpoint.com/docs/api/v1/update-machine-account-subtype-approval-config-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
Path   | SubtypeId | **String** | True  | machine account subtype ID.
 Body  | Jsonpatchoperation | [**[]Jsonpatchoperation**](../models/jsonpatchoperation) | True  | The JSONPatch payload used to update the object.

### Return type
[**Machineaccountsubtypeconfigdto**](../models/machineaccountsubtypeconfigdto)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | This response indicates the PATCH operation succeeded and the API returns the updated MachineAccountSubtypeConfigDto object. | Machineaccountsubtypeconfigdto
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: application/json-patch+json
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SubtypeId = "00eebcf881994e419d72e757fd30dc0e" # String | machine account subtype ID.
$JsonpatchoperationValue = Initialize-JsonpatchoperationValue 
$Jsonpatchoperation = Initialize-Jsonpatchoperation -Op "add" -Path "/description" -Value $JsonpatchoperationValue # Jsonpatchoperation[] | The JSONPatch payload used to update the object.
 $Jsonpatchoperation = @""@ # Jsonpatchoperation[] | The JSONPatch payload used to update the object.
 

# Machine Subtype Approval Config

try {
    $Result = ConvertFrom-JsonToJsonpatchoperation -Json $Jsonpatchoperation
    Update-MachineAccountSubtypeApprovalConfigV1 -XSailPointExperimental $XSailPointExperimental -SubtypeId $SubtypeId -Jsonpatchoperation $Result 
    
    # Below is a request that includes all optional parameters
    # Update-MachineAccountSubtypeApprovalConfigV1 -XSailPointExperimental $XSailPointExperimental -SubtypeId $SubtypeId -Jsonpatchoperation $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-MachineAccountSubtypeApprovalConfigV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-machine-account-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Use this API to update machine accounts details. 


[API Spec](https://developer.sailpoint.com/docs/api/v1/update-machine-account-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | Machine Account ID.
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
 Body  | RequestBody | [**[]SystemCollectionsHashtable**](../models/system-collections-hashtable) | True  | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The following fields are patchable:           * description           * ownerIdentity           * subType           * accessType           * environment           * attributes           * classificationMethod           * manuallyEdited           * nativeIdentity           * uuid           * source           * manuallyCorrelated           * enabled           * locked           * hasEntitlements           * connectorAttributes

### Return type
[**Machineaccount**](../models/machineaccount)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Updated Machine Account object. | Machineaccount
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: application/json-patch+json
- **Accept**: application/json

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Machine Account ID.
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$RequestBody =  # SystemCollectionsHashtable[] | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The following fields are patchable:           * description           * ownerIdentity           * subType           * accessType           * environment           * attributes           * classificationMethod           * manuallyEdited           * nativeIdentity           * uuid           * source           * manuallyCorrelated           * enabled           * locked           * hasEntitlements           * connectorAttributes
 $RequestBody = @"[{"op":"add","path":"/environment","value":"test"}]"@ # SystemCollectionsHashtable[] | A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The following fields are patchable:           * description           * ownerIdentity           * subType           * accessType           * environment           * attributes           * classificationMethod           * manuallyEdited           * nativeIdentity           * uuid           * source           * manuallyCorrelated           * enabled           * locked           * hasEntitlements           * connectorAttributes
 

# Update machine account details

try {
    $Result = ConvertFrom-JsonToRequestBody -Json $RequestBody
    Update-MachineAccountV1 -Id $Id -XSailPointExperimental $XSailPointExperimental -RequestBody $Result 
    
    # Below is a request that includes all optional parameters
    # Update-MachineAccountV1 -Id $Id -XSailPointExperimental $XSailPointExperimental -RequestBody $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-MachineAccountV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-machine-accounts-in-bulk-v1
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Applies the same JSON Patch document to up to 100 machine accounts in one request.

The response uses HTTP 207 Multi-Status. Each array element reports the result for one requested ID in its **status** field (for example, 200 for success, 404 if the account was not found or is not accessible to the caller, 409 for a duplicate ID in the batch).

Callers without the **idn:mis-account:update** right may still update accounts they own. IDs the caller cannot operate on are reported as not found or failed in the per-row results.

Patchable fields include **description**, **subtype**, **environment**, **machineIdentity**, **ownerIdentity**, and **manuallyEdited** only.

[API Spec](https://developer.sailpoint.com/docs/api/v1/update-machine-accounts-in-bulk-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
 Body  | Misbulkupdaterequest | [**Misbulkupdaterequest**](../models/misbulkupdaterequest) | True  | 

### Return type
[**Misbulkresponse[]**](../models/misbulkresponse)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
207 | Per-account bulk update results. | Misbulkresponse[]
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListMachineAccountsV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListMachineAccountsV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$Misbulkupdaterequest = @""@

# Bulk update machine accounts

try {
    $Result = ConvertFrom-JsonToMisbulkupdaterequest -Json $Misbulkupdaterequest
    Update-MachineAccountsInBulkV1 -XSailPointExperimental $XSailPointExperimental -Misbulkupdaterequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-MachineAccountsInBulkV1 -XSailPointExperimental $XSailPointExperimental -Misbulkupdaterequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-MachineAccountsInBulkV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
