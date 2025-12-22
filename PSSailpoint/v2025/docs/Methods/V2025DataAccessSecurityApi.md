---
id: v2025-data-access-security
title: DataAccessSecurity
pagination_label: DataAccessSecurity
sidebar_label: DataAccessSecurity
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DataAccessSecurity', 'V2025DataAccessSecurity'] 
slug: /tools/sdk/powershell/v2025/methods/data-access-security
tags: ['SDK', 'Software Development Kit', 'DataAccessSecurity', 'V2025DataAccessSecurity']
---

# DataAccessSecurity
  Use this API to enable data ownership election campaigns, assign resource owners, and respond to identity lifecycle events to maintain continuous accountability.
This API can also trigger and manage DAS tasks such as scans-starting them on demand, updating configurations or schedules, and retrieving statuses. Additionally, you can onboard and manage applications at scale by creating and configuring them, setting scanning schedules, retrieving metadata, and associating them with Virtual Appliances and Identity Collectors.
 
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2025*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Suspend-V2025Task**](#cancel-task) | **POST** `/das/tasks/cancel/{id}` | Cancel a DAS task.
[**New-V2025Application**](#create-application) | **POST** `/das/applications` | Create application
[**New-V2025Schedule**](#create-schedule) | **POST** `/das/tasks/schedules` | Create a new schedule.
[**Invoke-V2025DasOwnersAssignPost**](#das-owners-assign-post) | **POST** `/das/owners/assign` | Assign owner to application resource.
[**Invoke-V2025DasOwnersOwnerIdentityIdResourcesGet**](#das-owners-owner-identity-id-resources-get) | **GET** `/das/owners/{ownerIdentityId}/resources` | List resources for owner.
[**Invoke-V2025DasOwnersReelectPost**](#das-owners-reelect-post) | **POST** `/das/owners/reelect` | Re-elect resource owner.
[**Invoke-V2025DasOwnersResourcesResourceIdGet**](#das-owners-resources-resource-id-get) | **GET** `/das/owners/resources/{resourceId}` | List owners for resource.
[**Invoke-V2025DasOwnersSourceIdentityIdReassignDestinationIdentityIdPost**](#das-owners-source-identity-id-reassign-destination-identity-id-post) | **POST** `/das/owners/{sourceIdentityId}/reassign/{destinationIdentityId}` | Reassign resource owner.
[**Remove-V2025Application**](#delete-application) | **DELETE** `/das/applications/{id}` | Delete an application by identifier.
[**Remove-V2025Schedule**](#delete-schedule) | **DELETE** `/das/tasks/schedules/{id}` | Delete a DAS schedule.
[**Remove-V2025Task**](#delete-task) | **DELETE** `/das/tasks/{id}` | Delete a DAS task.
[**Get-V2025Application**](#get-application) | **GET** `/das/applications/{id}` | Retrieve application details by identifier.
[**Get-V2025Applications**](#get-applications) | **GET** `/das/applications` | Search applications in DAS.
[**Get-V2025Owners**](#get-owners) | **GET** `/das/owners/applications/{appId}` | Retrieve owners per application.
[**Get-V2025Schedule**](#get-schedule) | **GET** `/das/tasks/schedules/{id}` | Get a DAS schedule.
[**Get-V2025Schedules**](#get-schedules) | **GET** `/das/tasks/schedules` | List all schedules.
[**Get-V2025Task**](#get-task) | **GET** `/das/tasks/{id}` | Get a DAS task.
[**Get-V2025Tasks**](#get-tasks) | **GET** `/das/tasks` | Lists all DAS tasks.
[**Send-V2025Application**](#put-application) | **PUT** `/das/applications/{id}` | Update application by identifier.
[**Send-V2025Schedule**](#put-schedule) | **PUT** `/das/tasks/schedules/{id}` | Update a schedule.
[**Start-V2025TaskRerun**](#start-task-rerun) | **POST** `/das/tasks/rerun/{id}` | Rerun a DAS task.


## cancel-task
This end-point sends a request to cancel a task in Data Access Security.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/cancel-task)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **Int64** | True  | The unique identifier of the task to cancel.

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | No Content | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = 1001 # Int64 | The unique identifier of the task to cancel.

# Cancel a DAS task.

try {
    Suspend-V2025Task -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Suspend-V2025Task -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Suspend-V2025Task"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-application
This endpoint creates a new application in Data Access Security with the specified configuration.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/create-application)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | BaseCreateApplicationRequest | [**BaseCreateApplicationRequest**](../models/base-create-application-request) | True  | Request body containing the details required to create a new application.

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | No Content | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$BaseCreateApplicationRequest = @"{
  "adIdentityCollectorId" : 987654321,
  "applicationType" : 9,
  "nisIdentityCollectorId" : 192837465,
  "executeNow" : false,
  "name" : "HR File Server",
  "description" : "Stores HR documents and employee records.",
  "dataClassificationSettings" : {
    "isEnabled" : true,
    "clusterId" : "cluster-001"
  },
  "activityConfigurationSettings" : {
    "excludeFolders" : [ "/tmp", "/archive" ],
    "excludeFileExtensions" : [ ".log", ".bak" ],
    "excludeActions" : [ "delete", "move" ],
    "isEnabled" : true,
    "retentionTimePeriod" : 30,
    "retentionTimeType" : "days",
    "clusterId" : "cluster-001",
    "excludeUsers" : [ "user1", "user2" ]
  },
  "applicationCrawlerSettings" : {
    "calculateResourceSize" : 2,
    "excludedResources" : [ "resourceA", "resourceB" ],
    "crawlPublicFolders" : true,
    "excludedPathsByRegex" : "^/archive/.*",
    "isEnabled" : true,
    "crawlSnapshotsFolder" : true,
    "crawlMailboxes" : false,
    "crawlTopLevelShares" : [ "share1", "share2" ],
    "clusterId" : "cluster-001",
    "includeResources" : [ "resourceX", "resourceY" ]
  },
  "identityCollectorId" : 123456789,
  "permissionCollectorSettings" : {
    "analyzeUniquePermissions" : true,
    "calculateRiskiestPermissions" : false,
    "isEnabled" : true,
    "calculateEffectivePermissions" : true,
    "clusterId" : "cluster-001",
    "effectivePermissionsSource" : "S3"
  },
  "tags" : [ {
    "key" : 1,
    "value" : "Confidential"
  } ]
}"@

# Create application

try {
    $Result = ConvertFrom-V2025JsonToBaseCreateApplicationRequest -Json $BaseCreateApplicationRequest
    New-V2025Application -BaseCreateApplicationRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-V2025Application -BaseCreateApplicationRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-V2025Application"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-schedule


[API Spec](https://developer.sailpoint.com/docs/api/v2025/create-schedule)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateScheduleRequest | [**CreateScheduleRequest**](../models/create-schedule-request) | True  | 

### Return type
**Int64**

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | OK | Int64
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateScheduleRequest = @"{
  "scheduleTaskName" : "Daily Data Sync",
  "scheduleType" : "Daily",
  "active" : true,
  "interval" : 1440,
  "startTime" : 1762237200,
  "endTime" : 1762240800,
  "taskTypeName" : "DataSync",
  "daysOfWeek" : [ "Monday", "Wednesday", "Friday" ],
  "applicationId" : 2001,
  "runAfterScheduleTaskId" : 1000
}"@

# Create a new schedule.

try {
    $Result = ConvertFrom-V2025JsonToCreateScheduleRequest -Json $CreateScheduleRequest
    New-V2025Schedule -CreateScheduleRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-V2025Schedule -CreateScheduleRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-V2025Schedule"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## das-owners-assign-post


[API Spec](https://developer.sailpoint.com/docs/api/v2025/das-owners-assign-post)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | AssignResourceOwnerRequest | [**AssignResourceOwnerRequest**](../models/assign-resource-owner-request) | True  | 

### Return type
**Int32**

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | 1 - success, otherwise failure. | Int32
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$AssignResourceOwnerRequest = @"{
  "fullPath" : "/shared/hr/documents/employee-records.pdf",
  "identityId" : "d290f1ee-6c54-4b01-90e6-d701748f0851",
  "appId" : 12345
}"@

# Assign owner to application resource.

try {
    $Result = ConvertFrom-V2025JsonToAssignResourceOwnerRequest -Json $AssignResourceOwnerRequest
    Invoke-V2025DasOwnersAssignPost -AssignResourceOwnerRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Invoke-V2025DasOwnersAssignPost -AssignResourceOwnerRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-V2025DasOwnersAssignPost"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## das-owners-owner-identity-id-resources-get


[API Spec](https://developer.sailpoint.com/docs/api/v2025/das-owners-owner-identity-id-resources-get)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | OwnerIdentityId | **String** | True  | Unique identifier for the owner. This should be a UUID representing the owner's identity.
  Query | Limit | **Int32** |   (optional) (default to 250) | Not applicable for this endpoint. Do not use.
  Query | Offset | **Int32** |   (optional) (default to 0) | Not applicable for this endpoint. Do not use.

### Return type
[**ResourceModel[]**](../models/resource-model)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | A list of resources owned by the specified identity was retrieved successfully. | ResourceModel[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$OwnerIdentityId = "a3f1c2d4-5678-4e9b-8c2d-123456789abc" # String | Unique identifier for the owner. This should be a UUID representing the owner's identity.
$Limit = 250 # Int32 | Not applicable for this endpoint. Do not use. (optional) (default to 250)
$Offset = 0 # Int32 | Not applicable for this endpoint. Do not use. (optional) (default to 0)

# List resources for owner.

try {
    Invoke-V2025DasOwnersOwnerIdentityIdResourcesGet -OwnerIdentityId $OwnerIdentityId 
    
    # Below is a request that includes all optional parameters
    # Invoke-V2025DasOwnersOwnerIdentityIdResourcesGet -OwnerIdentityId $OwnerIdentityId -Limit $Limit -Offset $Offset  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-V2025DasOwnersOwnerIdentityIdResourcesGet"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## das-owners-reelect-post


[API Spec](https://developer.sailpoint.com/docs/api/v2025/das-owners-reelect-post)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | ReelectRequest | [**ReelectRequest**](../models/reelect-request) | True  | The request body must contain details for re-electing a resource owner. Date/time fields should use epoch format in seconds.

### Return type
**Int32**

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | The number of elections CREATED. In case of failure, some elections may not be STARTED. | Int32
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$ReelectRequest = @"{
  "ownerId" : "c1a2b3d4-e5f6-7890-abcd-1234567890ab",
  "campaignName" : "Annual Resource Owner Election",
  "reviewers" : [ "d4e5f6a7-b8c9-0123-4567-89abcdef0123", "e7f8g9h0-i1j2-3456-7890-klmnopqrstuv" ]
}"@

# Re-elect resource owner.

try {
    $Result = ConvertFrom-V2025JsonToReelectRequest -Json $ReelectRequest
    Invoke-V2025DasOwnersReelectPost -ReelectRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Invoke-V2025DasOwnersReelectPost -ReelectRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-V2025DasOwnersReelectPost"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## das-owners-resources-resource-id-get


[API Spec](https://developer.sailpoint.com/docs/api/v2025/das-owners-resources-resource-id-get)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | ResourceId | **Int64** | True  | Unique identifier for the resource.
  Query | Limit | **Int32** |   (optional) (default to 250) | Not applicable for this endpoint. Do not use.
  Query | Offset | **Int32** |   (optional) (default to 0) | Not applicable for this endpoint. Do not use.

### Return type
**String[]**

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | A list of owner identity UUIDs for the specified resource was retrieved successfully. | String[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$ResourceId = 101 # Int64 | Unique identifier for the resource.
$Limit = 250 # Int32 | Not applicable for this endpoint. Do not use. (optional) (default to 250)
$Offset = 0 # Int32 | Not applicable for this endpoint. Do not use. (optional) (default to 0)

# List owners for resource.

try {
    Invoke-V2025DasOwnersResourcesResourceIdGet -ResourceId $ResourceId 
    
    # Below is a request that includes all optional parameters
    # Invoke-V2025DasOwnersResourcesResourceIdGet -ResourceId $ResourceId -Limit $Limit -Offset $Offset  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-V2025DasOwnersResourcesResourceIdGet"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## das-owners-source-identity-id-reassign-destination-identity-id-post


[API Spec](https://developer.sailpoint.com/docs/api/v2025/das-owners-source-identity-id-reassign-destination-identity-id-post)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | SourceIdentityId | **String** | True  | Unique identifier for the source owner. This should be a UUID representing the identity to reassign from.
Path   | DestinationIdentityId | **String** | True  | Unique identifier for the destination owner. This should be a UUID representing the identity to reassign to.

### Return type
**Int32**

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | The number of resources whose owners were overwritten. | Int32
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$SourceIdentityId = "a3f1c2d4-5678-4e9b-8c2d-123456789abc" # String | Unique identifier for the source owner. This should be a UUID representing the identity to reassign from.
$DestinationIdentityId = "b4e2d3c5-6789-4f0a-9d3e-234567890bcd" # String | Unique identifier for the destination owner. This should be a UUID representing the identity to reassign to.

# Reassign resource owner.

try {
    Invoke-V2025DasOwnersSourceIdentityIdReassignDestinationIdentityIdPost -SourceIdentityId $SourceIdentityId -DestinationIdentityId $DestinationIdentityId 
    
    # Below is a request that includes all optional parameters
    # Invoke-V2025DasOwnersSourceIdentityIdReassignDestinationIdentityIdPost -SourceIdentityId $SourceIdentityId -DestinationIdentityId $DestinationIdentityId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Invoke-V2025DasOwnersSourceIdentityIdReassignDestinationIdentityIdPost"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-application
This endpoint deletes an application from Data Access Security by its unique identifier.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/delete-application)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **Int64** | True  | The unique identifier of the application to delete.

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | No Content | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = 12345 # Int64 | The unique identifier of the application to delete.

# Delete an application by identifier.

try {
    Remove-V2025Application -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-V2025Application -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-V2025Application"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-schedule
This end-point sends a request to delete a schedule in Data Access Security.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/delete-schedule)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **Int64** | True  | The unique identifier of the schedule to delete.

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | No Content | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = 1001 # Int64 | The unique identifier of the schedule to delete.

# Delete a DAS schedule.

try {
    Remove-V2025Schedule -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-V2025Schedule -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-V2025Schedule"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-task
This end-point sends a request to delete a task in Data Access Security.


[API Spec](https://developer.sailpoint.com/docs/api/v2025/delete-task)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **Int64** | True  | The unique identifier of the task to delete.

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | No Content | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = 1001 # Int64 | The unique identifier of the task to delete.

# Delete a DAS task.

try {
    Remove-V2025Task -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-V2025Task -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-V2025Task"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-application
This endpoint retrieves the details of a specific application in Data Access Security by its unique identifier.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/get-application)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **Int64** | True  | The unique identifier of the application to retrieve.

### Return type
[**ApplicationItem**](../models/application-item)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | The application details were retrieved successfully. | ApplicationItem
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = 12345 # Int64 | The unique identifier of the application to retrieve.

# Retrieve application details by identifier.

try {
    Get-V2025Application -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-V2025Application -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2025Application"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-applications
This endpoint lists all the applications in Data Access Security with optional filtering.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/get-applications)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Filters | **String** |   (optional) | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **appIds**: *eq, in*  **tagIds**: *eq, in*  **statuses**: *eq, in*  **groupCodes**: *eq, in*  **virtualAppId**: *eq*  **appName**: *eq*  **supportsValidation**: *eq*  Supported composite operators are *and, or*
  Query | Limit | **Int32** |   (optional) (default to 250) | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Offset | **Int32** |   (optional) (default to 0) | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

### Return type
[**ApplicationItem[]**](../models/application-item)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | A list of applications matching the filter criteria. | ApplicationItem[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Filters = 'AppType eq 'ActiveDirectory' and Statuses eq 'Passed'' # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **appIds**: *eq, in*  **tagIds**: *eq, in*  **statuses**: *eq, in*  **groupCodes**: *eq, in*  **virtualAppId**: *eq*  **appName**: *eq*  **supportsValidation**: *eq*  Supported composite operators are *and, or* (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Search applications in DAS.

try {
    Get-V2025Applications 
    
    # Below is a request that includes all optional parameters
    # Get-V2025Applications -Filters $Filters -Limit $Limit -Offset $Offset -Count $Count  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2025Applications"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-owners


[API Spec](https://developer.sailpoint.com/docs/api/v2025/get-owners)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | AppId | **Int64** | True  | The unique identifier of the application for which to retrieve owners.
  Query | Limit | **Int32** |   (optional) (default to 250) | Not applicable for this endpoint. Do not use.
  Query | Offset | **Int32** |   (optional) (default to 0) | Not applicable for this endpoint. Do not use.

### Return type
[**DataOwnerModel[]**](../models/data-owner-model)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | OK. Returns a list of DataOwnerModel objects. | DataOwnerModel[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$AppId = 2001 # Int64 | The unique identifier of the application for which to retrieve owners.
$Limit = 250 # Int32 | Not applicable for this endpoint. Do not use. (optional) (default to 250)
$Offset = 0 # Int32 | Not applicable for this endpoint. Do not use. (optional) (default to 0)

# Retrieve owners per application.

try {
    Get-V2025Owners -AppId $AppId 
    
    # Below is a request that includes all optional parameters
    # Get-V2025Owners -AppId $AppId -Limit $Limit -Offset $Offset  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2025Owners"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-schedule
This end-point gets a schedule in Data Access Security.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/get-schedule)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **Int64** | True  | The unique identifier of the schedule to retrieve.

### Return type
[**ScheduleInfo**](../models/schedule-info)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | A schedule object. | ScheduleInfo
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = 1001 # Int64 | The unique identifier of the schedule to retrieve.

# Get a DAS schedule.

try {
    Get-V2025Schedule -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-V2025Schedule -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2025Schedule"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-schedules
This end-point lists all the schedules in Data Access Security.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/get-schedules)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Filters | **String** |   (optional) | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **scheduleTaskIds**: *eq, in*  **taskTypeName**: *eq, in*  **status**: *eq*  **applicationId**: *eq*  **fullName**: *eq*  **nameSubString**: *eq*  **scheduleType**: *eq*  Supported composite operators are *and, or*
  Query | Limit | **Int32** |   (optional) (default to 250) | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Offset | **Int32** |   (optional) (default to 0) | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

### Return type
[**ScheduleInfo[]**](../models/schedule-info)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | List of Schedule objects. | ScheduleInfo[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Filters = 'ScheduleType eq "Daily" and startTime eq 1762237200' # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **scheduleTaskIds**: *eq, in*  **taskTypeName**: *eq, in*  **status**: *eq*  **applicationId**: *eq*  **fullName**: *eq*  **nameSubString**: *eq*  **scheduleType**: *eq*  Supported composite operators are *and, or* (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# List all schedules.

try {
    Get-V2025Schedules 
    
    # Below is a request that includes all optional parameters
    # Get-V2025Schedules -Filters $Filters -Limit $Limit -Offset $Offset -Count $Count  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2025Schedules"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-task
This end-point gets a task in Data Access Security.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/get-task)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **Int64** | True  | The unique identifier of the task to retrieve.

### Return type
[**TaskInfo**](../models/task-info)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | A Task object. | TaskInfo
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = 1001 # Int64 | The unique identifier of the task to retrieve.

# Get a DAS task.

try {
    Get-V2025Task -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-V2025Task -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2025Task"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-tasks
This end-point lists all the tasks in Data Access Security.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/get-tasks)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Filters | **String** |   (optional) | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **taskIds**: *eq, in*  **statuses**: *eq, in*  **taskTypeName**: *eq, in*  **taskName**: *eq*  **endBeforeTime**: *eq*  Supported composite operators are *and, or*  Example: taskTypeName eq ""DataSync"" and endBeforeTime eq 1762240800
  Query | Limit | **Int32** |   (optional) (default to 250) | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Offset | **Int32** |   (optional) (default to 0) | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

### Return type
[**TaskInfo[]**](../models/task-info)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | OK. Returns a list of Data Access Security tasks. | TaskInfo[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Filters = 'TaskTypeName eq "DataClassification and EndBeforeTime eq 1762240800" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **taskIds**: *eq, in*  **statuses**: *eq, in*  **taskTypeName**: *eq, in*  **taskName**: *eq*  **endBeforeTime**: *eq*  Supported composite operators are *and, or*  Example: taskTypeName eq ""DataSync"' and endBeforeTime eq 1762240800 (optional)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# Lists all DAS tasks.

try {
    Get-V2025Tasks 
    
    # Below is a request that includes all optional parameters
    # Get-V2025Tasks -Filters $Filters -Limit $Limit -Offset $Offset -Count $Count  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2025Tasks"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## put-application
This endpoint updates an existing application in Data Access Security with the specified configuration.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/put-application)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **Int64** | True  | The unique identifier of the application to update.
 Body  | BaseCreateApplicationRequest | [**BaseCreateApplicationRequest**](../models/base-create-application-request) | True  | Request body containing the updated details for the application.

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | No Content | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = 12345 # Int64 | The unique identifier of the application to update.
$BaseCreateApplicationRequest = @"{
  "adIdentityCollectorId" : 987654321,
  "applicationType" : 9,
  "nisIdentityCollectorId" : 192837465,
  "executeNow" : false,
  "name" : "HR File Server",
  "description" : "Stores HR documents and employee records.",
  "dataClassificationSettings" : {
    "isEnabled" : true,
    "clusterId" : "cluster-001"
  },
  "activityConfigurationSettings" : {
    "excludeFolders" : [ "/tmp", "/archive" ],
    "excludeFileExtensions" : [ ".log", ".bak" ],
    "excludeActions" : [ "delete", "move" ],
    "isEnabled" : true,
    "retentionTimePeriod" : 30,
    "retentionTimeType" : "days",
    "clusterId" : "cluster-001",
    "excludeUsers" : [ "user1", "user2" ]
  },
  "applicationCrawlerSettings" : {
    "calculateResourceSize" : 2,
    "excludedResources" : [ "resourceA", "resourceB" ],
    "crawlPublicFolders" : true,
    "excludedPathsByRegex" : "^/archive/.*",
    "isEnabled" : true,
    "crawlSnapshotsFolder" : true,
    "crawlMailboxes" : false,
    "crawlTopLevelShares" : [ "share1", "share2" ],
    "clusterId" : "cluster-001",
    "includeResources" : [ "resourceX", "resourceY" ]
  },
  "identityCollectorId" : 123456789,
  "permissionCollectorSettings" : {
    "analyzeUniquePermissions" : true,
    "calculateRiskiestPermissions" : false,
    "isEnabled" : true,
    "calculateEffectivePermissions" : true,
    "clusterId" : "cluster-001",
    "effectivePermissionsSource" : "S3"
  },
  "tags" : [ {
    "key" : 1,
    "value" : "Confidential"
  } ]
}"@

# Update application by identifier.

try {
    $Result = ConvertFrom-V2025JsonToBaseCreateApplicationRequest -Json $BaseCreateApplicationRequest
    Send-V2025Application -Id $Id -BaseCreateApplicationRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Send-V2025Application -Id $Id -BaseCreateApplicationRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Send-V2025Application"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## put-schedule


[API Spec](https://developer.sailpoint.com/docs/api/v2025/put-schedule)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **Int64** | True  | The unique identifier of the schedule to update.
 Body  | UpdateScheduleRequest | [**UpdateScheduleRequest**](../models/update-schedule-request) | True  | 

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | No Content | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = 1001 # Int64 | The unique identifier of the schedule to update.
$UpdateScheduleRequest = @"{
  "scheduleTaskName" : "Daily Data Sync",
  "scheduleType" : "Daily",
  "active" : true,
  "interval" : 1440,
  "startTime" : 1762237200,
  "endTime" : 1762240800,
  "taskTypeName" : "DataSync",
  "daysOfWeek" : [ "Monday", "Wednesday", "Friday" ],
  "applicationId" : 2001,
  "runAfterScheduleTaskId" : 1000
}"@

# Update a schedule.

try {
    $Result = ConvertFrom-V2025JsonToUpdateScheduleRequest -Json $UpdateScheduleRequest
    Send-V2025Schedule -Id $Id -UpdateScheduleRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Send-V2025Schedule -Id $Id -UpdateScheduleRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Send-V2025Schedule"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## start-task-rerun
This end-point sends a request to re-run a task in Data Access Security.

[API Spec](https://developer.sailpoint.com/docs/api/v2025/start-task-rerun)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **Int64** | True  | The unique identifier of the task to rerun.

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | No Content | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = 1001 # Int64 | The unique identifier of the task to rerun.

# Rerun a DAS task.

try {
    Start-V2025TaskRerun -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Start-V2025TaskRerun -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Start-V2025TaskRerun"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
