---
id: v2026-human-account-deletion-approval-config
title: HumanAccountDeletionApprovalConfig
pagination_label: HumanAccountDeletionApprovalConfig
sidebar_label: HumanAccountDeletionApprovalConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'HumanAccountDeletionApprovalConfig', 'V2026HumanAccountDeletionApprovalConfig'] 
slug: /tools/sdk/powershell/v2026/methods/human-account-deletion-approval-config
tags: ['SDK', 'Software Development Kit', 'HumanAccountDeletionApprovalConfig', 'V2026HumanAccountDeletionApprovalConfig']
---

# HumanAccountDeletionApprovalConfig
   
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2026*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2026AccountDeleteApprovalConfig**](#get-account-delete-approval-config) | **GET** `/sources/{sourceId}/approval-config/account-delete` | Human Account Deletion Approval Config
[**Update-V2026AccountDeletionApprovalConfig**](#update-account-deletion-approval-config) | **PATCH** `/sources/{sourceId}/approval-config/account-delete` | Human Account Deletion Approval Config


## get-account-delete-approval-config
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
The endpoint retrieves the approval configuration for deleting human accounts from a specified source. It returns details such as whether approval is required, who the approvers are, and any additional approval settings. This helps administrators understand and manage the approval workflow for human account deletions in their organization. The response is provided as an AccountDeleteConfigDto object.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-account-delete-approval-config)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
Path   | SourceId | **String** | True  | The Source id

### Return type
[**AccountDeleteConfigDto**](../models/account-delete-config-dto)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Responds with a AccountDeleteConfigDto for human account deletion approval config by sourceId. | AccountDeleteConfigDto
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
$SourceId = "ha38f94347e94562b5bb8424a56498d8" # String | The Source id

# Human Account Deletion Approval Config

try {
    Get-V2026AccountDeleteApprovalConfig -XSailPointExperimental $XSailPointExperimental -SourceId $SourceId 
    
    # Below is a request that includes all optional parameters
    # Get-V2026AccountDeleteApprovalConfig -XSailPointExperimental $XSailPointExperimental -SourceId $SourceId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026AccountDeleteApprovalConfig"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-account-deletion-approval-config
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Updates the approval configuration for deleting human accounts for a specific source, identified by source ID. This endpoint allows administrators to modify settings such as whether approval is required, who the approvers are, and other approval-related options. The update is performed using a JSON Patch payload, and the response returns the updated AccountDeleteConfigDto object reflecting the new approval workflow configuration.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/update-account-deletion-approval-config)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
Path   | SourceId | **String** | True  | Human account source ID.
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
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetTaskStatus401Response
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetTaskStatus429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json-patch+json
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$SourceId = "00eebcf881994e419d72e757fd30dc0e" # String | Human account source ID.
 $JsonPatchOperation = @"{
  "op" : "replace",
  "path" : "/description",
  "value" : "New description"
}"@ # JsonPatchOperation[] | The JSONPatch payload used to update the object.
 

# Human Account Deletion Approval Config

try {
    $Result = ConvertFrom-V2026JsonToJsonPatchOperation -Json $JsonPatchOperation
    Update-V2026AccountDeletionApprovalConfig -XSailPointExperimental $XSailPointExperimental -SourceId $SourceId -JsonPatchOperation $Result 
    
    # Below is a request that includes all optional parameters
    # Update-V2026AccountDeletionApprovalConfig -XSailPointExperimental $XSailPointExperimental -SourceId $SourceId -JsonPatchOperation $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-V2026AccountDeletionApprovalConfig"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
