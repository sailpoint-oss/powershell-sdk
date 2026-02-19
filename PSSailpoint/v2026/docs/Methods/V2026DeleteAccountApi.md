---
id: v2026-delete-account
title: DeleteAccount
pagination_label: DeleteAccount
sidebar_label: DeleteAccount
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DeleteAccount', 'V2026DeleteAccount'] 
slug: /tools/sdk/powershell/v2026/methods/delete-account
tags: ['SDK', 'Software Development Kit', 'DeleteAccount', 'V2026DeleteAccount']
---

# DeleteAccount
   
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2026*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-V2026AccountRequest**](#delete-account-request) | **POST** `/account-requests/account/{accountId}/delete` | Delete account


## delete-account-request
:::warning experimental 
This API is currently in an experimental state. The API is subject to change based on feedback and further testing. You must include the X-SailPoint-Experimental header and set it to `true` to use this endpoint.
:::
Initiates an account deletion request for the specified account.
This method validates the input data, processes the deletion request,
and generates an asynchronous result containing a tracking ID. 
>**NOTE: You can only delete accounts from sources of the "Connected" type. which supports account deletion**

[API Spec](https://developer.sailpoint.com/docs/api/v2026/delete-account-request)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
   | XSailPointExperimental | **String** | True  (default to "true") | Use this header to enable this experimental API.
Path   | AccountId | **String** | True  | Account ID.
 Body  | AccountDeleteRequestInput | [**AccountDeleteRequestInput**](../models/account-delete-request-input) |   (optional) | 

### Return type
[**AccountDeleteAsyncResult**](../models/account-delete-async-result)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
202 | Account deletion request details. | AccountDeleteAsyncResult
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetTaskStatus401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetTaskStatus429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$XSailPointExperimental = "true" # String | Use this header to enable this experimental API. (default to "true")
$AccountId = "ef38f94347e94562b5bb8424a56498d8" # String | Account ID.
$AccountDeleteRequestInput = @"{
  "comments" : "Requesting account deletion request"
}"@

# Delete account

try {
    Remove-V2026AccountRequest -XSailPointExperimental $XSailPointExperimental -AccountId $AccountId 
    
    # Below is a request that includes all optional parameters
    # Remove-V2026AccountRequest -XSailPointExperimental $XSailPointExperimental -AccountId $AccountId -AccountDeleteRequestInput $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-V2026AccountRequest"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
