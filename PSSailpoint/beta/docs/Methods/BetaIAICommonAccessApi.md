---
id: beta-iai-common-access
title: IAICommonAccess
pagination_label: IAICommonAccess
sidebar_label: IAICommonAccess
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IAICommonAccess', 'BetaIAICommonAccess'] 
slug: /tools/sdk/powershell/beta/methods/iai-common-access
tags: ['SDK', 'Software Development Kit', 'IAICommonAccess', 'BetaIAICommonAccess']
---

# IAICommonAccess
   
  

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaCommonAccess**](#create-common-access) | **POST** `/common-access` | Create common access items
[**Get-BetaCommonAccess**](#get-common-access) | **GET** `/common-access` | Get a paginated list of common access
[**Update-BetaCommonAccessStatusInBulk**](#update-common-access-status-in-bulk) | **POST** `/common-access/update-status` | Bulk update common access status


## create-common-access
This API is used to add roles/access profiles to the list of common access for a customer. Requires authorization scope of iai:access-modeling:create

[API Spec](https://developer.sailpoint.com/docs/api/beta/create-common-access)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CommonAccessItemRequest | [**CommonAccessItemRequest**](../models/common-access-item-request) | True  | 

### Return type
[**CommonAccessItemResponse**](../models/common-access-item-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
202 | Returns details of the common access classification request. | CommonAccessItemResponse
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessModelMetadataAttribute401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessModelMetadataAttribute429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CommonAccessItemRequest = @"{
  "access" : {
    "ownerName" : "ownerName",
    "name" : "name",
    "description" : "description",
    "id" : "id",
    "type" : "ACCESS_PROFILE",
    "ownerId" : "ownerId"
  },
  "status" : "CONFIRMED"
}"@

# Create common access items

try {
    $Result = ConvertFrom-JsonToCommonAccessItemRequest -Json $CommonAccessItemRequest
    New-BetaCommonAccess -BetaCommonAccessItemRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-BetaCommonAccess -BetaCommonAccessItemRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-BetaCommonAccess"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-common-access
This endpoint returns the current common access for a customer. The returned items can be filtered and sorted. Requires authorization scope of iai:access-modeling:read

[API Spec](https://developer.sailpoint.com/docs/api/beta/get-common-access)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Offset | **Int32** |   (optional) (default to 0) | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Limit | **Int32** |   (optional) (default to 250) | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Filters | **String** |   (optional) | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **status**: *eq, sw*  **reviewedByUser** *eq*  **access.id**: *eq, sw*  **access.type**: *eq*  **access.name**: *sw, eq*  **access.description**: *sw, eq*
  Query | Sorters | **String** |   (optional) | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **access.name, status**  By default the common access items are sorted by name, ascending.

### Return type
[**CommonAccessResponse[]**](../models/common-access-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Succeeded. Returns a list of common access for a customer. | CommonAccessResponse[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessModelMetadataAttribute401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = 'access.type eq "ROLE"' # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **status**: *eq, sw*  **reviewedByUser** *eq*  **access.id**: *eq, sw*  **access.type**: *eq*  **access.name**: *sw, eq*  **access.description**: *sw, eq* (optional)
$Sorters = "access.name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **access.name, status**  By default the common access items are sorted by name, ascending. (optional)

# Get a paginated list of common access

try {
    Get-BetaCommonAccess 
    
    # Below is a request that includes all optional parameters
    # Get-BetaCommonAccess -Offset $Offset -Limit $Limit -Count $Count -Filters $Filters -Sorters $Sorters  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-BetaCommonAccess"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-common-access-status-in-bulk
This submits an update request to the common access application. At this time there are no parameters. Requires authorization scope of iai:access-modeling:update

[API Spec](https://developer.sailpoint.com/docs/api/beta/update-common-access-status-in-bulk)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CommonAccessIDStatus | [**[]CommonAccessIDStatus**](../models/common-access-id-status) | True  | Confirm or deny in bulk the common access ids that are (or aren't) common access

### Return type
[**SystemCollectionsHashtable**](https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
202 | Accepted - Returned if the request was successfully accepted into the system. | SystemCollectionsHashtable
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessModelMetadataAttribute401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessModelMetadataAttribute429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
 $CommonAccessIDStatus = @"{
  "confirmedIds" : [ "046b6c7f-0b8a-43b9-b35d-6489e6daee91", "046b6c7f-0b8a-43b9-b35d-6489e6daee91" ],
  "deniedIds" : [ "046b6c7f-0b8a-43b9-b35d-6489e6daee91", "046b6c7f-0b8a-43b9-b35d-6489e6daee91" ]
}"@ # CommonAccessIDStatus[] | Confirm or deny in bulk the common access ids that are (or aren't) common access
 

# Bulk update common access status

try {
    $Result = ConvertFrom-JsonToCommonAccessIDStatus -Json $CommonAccessIDStatus
    Update-BetaCommonAccessStatusInBulk -BetaCommonAccessIDStatus $Result 
    
    # Below is a request that includes all optional parameters
    # Update-BetaCommonAccessStatusInBulk -BetaCommonAccessIDStatus $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-BetaCommonAccessStatusInBulk"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
