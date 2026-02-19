---
id: v2026-machine-subtype-approval-config
title: MachineSubtypeApprovalConfig
pagination_label: MachineSubtypeApprovalConfig
sidebar_label: MachineSubtypeApprovalConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineSubtypeApprovalConfig', 'V2026MachineSubtypeApprovalConfig'] 
slug: /tools/sdk/powershell/v2026/methods/machine-subtype-approval-config
tags: ['SDK', 'Software Development Kit', 'MachineSubtypeApprovalConfig', 'V2026MachineSubtypeApprovalConfig']
---

# MachineSubtypeApprovalConfig
   
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2026*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2026MachineAccountDeletionSubTypeApprovalConfig**](#get-machine-account-deletion-sub-type-approval-config) | **GET** `/source-subtypes/{subtypeId}/machine-config` | Machine Subtype Approval Config
[**Update-V2026MachineAccountDeletionBySubTypeApprovalConfig**](#update-machine-account-deletion-by-sub-type-approval-config) | **PATCH** `/source-subtypes/{subtypeId}/machine-config` | Machine Subtype Approval Config


## get-machine-account-deletion-sub-type-approval-config
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
This endpoint retrieves the approval configuration for machine account deletion at the machine subtype level. By providing a specific subtypeId in the path, clients can fetch the approval rules and settings (such as required approvers and comments policy) that govern account deletion for that particular machine subtype. The response includes a MachineAccountSubtypeConfigDto object detailing these configurations, enabling clients to understand or display the approval workflow required for deleting machine accounts of the given subtype. Use this endpoint to get machine subtype level approval config for account deletion.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-machine-account-deletion-sub-type-approval-config)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
Path   | SubtypeId | **String** | True  | machine subtype id.

### Return type
[**MachineAccountSubTypeConfigDto**](../models/machine-account-sub-type-config-dto)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Responds with a MachineAccountSubtypeConfigDto for machine account deletion approval config by subtypeId. | MachineAccountSubTypeConfigDto
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetTaskStatus401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetTaskStatus429Response
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
    Get-V2026MachineAccountDeletionSubTypeApprovalConfig -XSailPointExperimental $XSailPointExperimental -SubtypeId $SubtypeId 
    
    # Below is a request that includes all optional parameters
    # Get-V2026MachineAccountDeletionSubTypeApprovalConfig -XSailPointExperimental $XSailPointExperimental -SubtypeId $SubtypeId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026MachineAccountDeletionSubTypeApprovalConfig"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-machine-account-deletion-by-sub-type-approval-config
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Updates the approval configuration for machine account deletion at the specified machine subtype level. This endpoint allows clients to modify approval rules and settings (such as required approvers and comments policy) for account deletion workflows associated with a given subtypeId. Use this to customize or enforce approval requirements for deleting machine accounts of a particular subtype.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/update-machine-account-deletion-by-sub-type-approval-config)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
Path   | SubtypeId | **String** | True  | machine account subtype ID.
 Body  | JsonPatchOperation | [**[]JsonPatchOperation**](../models/json-patch-operation) | True  | The JSONPatch payload used to update the object.

### Return type
[**MachineAccountSubTypeConfigDto**](../models/machine-account-sub-type-config-dto)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | This response indicates the PATCH operation succeeded and the API returns the updated MachineAccountSubtypeConfigDto object. | MachineAccountSubTypeConfigDto
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetTaskStatus401Response
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetTaskStatus429Response
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
    Update-V2026MachineAccountDeletionBySubTypeApprovalConfig -XSailPointExperimental $XSailPointExperimental -SubtypeId $SubtypeId -JsonPatchOperation $Result 
    
    # Below is a request that includes all optional parameters
    # Update-V2026MachineAccountDeletionBySubTypeApprovalConfig -XSailPointExperimental $XSailPointExperimental -SubtypeId $SubtypeId -JsonPatchOperation $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-V2026MachineAccountDeletionBySubTypeApprovalConfig"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
