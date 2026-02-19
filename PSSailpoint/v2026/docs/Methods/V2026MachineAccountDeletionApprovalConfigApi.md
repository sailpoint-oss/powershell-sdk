---
id: v2026-machine-account-deletion-approval-config
title: MachineAccountDeletionApprovalConfig
pagination_label: MachineAccountDeletionApprovalConfig
sidebar_label: MachineAccountDeletionApprovalConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineAccountDeletionApprovalConfig', 'V2026MachineAccountDeletionApprovalConfig'] 
slug: /tools/sdk/powershell/v2026/methods/machine-account-deletion-approval-config
tags: ['SDK', 'Software Development Kit', 'MachineAccountDeletionApprovalConfig', 'V2026MachineAccountDeletionApprovalConfig']
---

# MachineAccountDeletionApprovalConfig
   
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2026*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2026MachineAccountDeletionApprovalConfigBySource**](#get-machine-account-deletion-approval-config-by-source) | **GET** `/sources/{sourceId}/approval-config/machine-account-delete` | Machine Account Deletion Approval Config
[**Update-V2026MachineAccountDeletionApprovalConfig**](#update-machine-account-deletion-approval-config) | **PATCH** `/sources/{sourceId}/approval-config/machine-account-delete` | Machine Account Deletion Approval Config


## get-machine-account-deletion-approval-config-by-source
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Retrieves the machine account deletion approval configuration for a specific source. This endpoint returns details about the approval requirements, approvers, and comment settings that govern the deletion of machine accounts associated with the given source ID.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-machine-account-deletion-approval-config-by-source)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
Path   | SourceId | **String** | True  | source id.

### Return type
[**AccountDeleteConfigDto**](../models/account-delete-config-dto)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Responds with a AccountDeleteConfigDto for machine account deletion approval config by sourceId. | AccountDeleteConfigDto
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListEntitlements401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListEntitlements429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SourceId = "gt38f94347e94562b5bb8424a56498d8" # String | source id.

# Machine Account Deletion Approval Config

try {
    Get-V2026MachineAccountDeletionApprovalConfigBySource -XSailPointExperimental $XSailPointExperimental -SourceId $SourceId 
    
    # Below is a request that includes all optional parameters
    # Get-V2026MachineAccountDeletionApprovalConfigBySource -XSailPointExperimental $XSailPointExperimental -SourceId $SourceId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026MachineAccountDeletionApprovalConfigBySource"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-machine-account-deletion-approval-config
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Use this endpoint to update the machine account deletion approval configuration for a specific source.
The update is performed using a JSON Patch payload, which allows partial modifications to the approval config.
This operation is typically used to change approval requirements, approvers, or comments settings for machine account deletion.
The endpoint expects the source ID as a path parameter and a valid JSON Patch array in the request body.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/update-machine-account-deletion-approval-config)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
Path   | SourceId | **String** | True  | machine account source ID.
 Body  | JsonPatchOperation | [**[]JsonPatchOperation**](../models/json-patch-operation) | True  | The JSONPatch payload used to update the object.

### Return type
[**AccountDeleteConfigDto**](../models/account-delete-config-dto)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | This response indicates the PATCH operation succeeded and the API returns the updated AccountDeleteConfigDto object. | AccountDeleteConfigDto
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListEntitlements401Response
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListEntitlements429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json-patch+json
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SourceId = "00eebcf881994e419d72e757fd30dc0e" # String | machine account source ID.
 $JsonPatchOperation = @"{
  "op" : "replace",
  "path" : "/description",
  "value" : "New description"
}"@ # JsonPatchOperation[] | The JSONPatch payload used to update the object.
 

# Machine Account Deletion Approval Config

try {
    $Result = ConvertFrom-V2026JsonToJsonPatchOperation -Json $JsonPatchOperation
    Update-V2026MachineAccountDeletionApprovalConfig -XSailPointExperimental $XSailPointExperimental -SourceId $SourceId -JsonPatchOperation $Result 
    
    # Below is a request that includes all optional parameters
    # Update-V2026MachineAccountDeletionApprovalConfig -XSailPointExperimental $XSailPointExperimental -SourceId $SourceId -JsonPatchOperation $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-V2026MachineAccountDeletionApprovalConfig"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
