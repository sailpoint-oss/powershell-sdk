---
id: v2024-identity-attributes
title: IdentityAttributes
pagination_label: IdentityAttributes
sidebar_label: IdentityAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityAttributes', 'V2024IdentityAttributes'] 
slug: /tools/sdk/powershell/v2024/methods/identity-attributes
tags: ['SDK', 'Software Development Kit', 'IdentityAttributes', 'V2024IdentityAttributes']
---

# IdentityAttributes
   
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2024*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2024IdentityAttribute**](#create-identity-attribute) | **POST** `/identity-attributes` | Create identity attribute
[**Remove-V2024IdentityAttribute**](#delete-identity-attribute) | **DELETE** `/identity-attributes/{name}` | Delete identity attribute
[**Remove-V2024IdentityAttributesInBulk**](#delete-identity-attributes-in-bulk) | **DELETE** `/identity-attributes/bulk-delete` | Bulk delete identity attributes
[**Get-V2024IdentityAttribute**](#get-identity-attribute) | **GET** `/identity-attributes/{name}` | Get identity attribute
[**Get-V2024IdentityAttributes**](#list-identity-attributes) | **GET** `/identity-attributes` | List identity attributes
[**Send-V2024IdentityAttribute**](#put-identity-attribute) | **PUT** `/identity-attributes/{name}` | Update identity attribute


## create-identity-attribute
Use this API to create a new identity attribute.

[API Spec](https://developer.sailpoint.com/docs/api/v2024/create-identity-attribute)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | IdentityAttribute | [**IdentityAttribute**](../models/identity-attribute) | True  | 

### Return type
[**IdentityAttribute**](../models/identity-attribute)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
201 | The identity attribute was created successfully. | IdentityAttribute
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
$IdentityAttribute = @"{
  "standard" : false,
  "system" : false,
  "sources" : [ {
    "type" : "rule",
    "properties" : {
      "ruleType" : "IdentityAttribute",
      "ruleName" : "Cloud Promote Identity Attribute"
    }
  }, {
    "type" : "rule",
    "properties" : {
      "ruleType" : "IdentityAttribute",
      "ruleName" : "Cloud Promote Identity Attribute"
    }
  } ],
  "displayName" : "Cost Center",
  "name" : "costCenter",
  "type" : "string",
  "searchable" : false,
  "multi" : false
}"@

# Create identity attribute

try {
    $Result = ConvertFrom-JsonToIdentityAttribute -Json $IdentityAttribute
    New-V2024IdentityAttribute -IdentityAttribute $Result 
    
    # Below is a request that includes all optional parameters
    # New-V2024IdentityAttribute -IdentityAttribute $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-V2024IdentityAttribute"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-identity-attribute
This deletes an identity attribute with the given name.  The `system` and `standard` properties must be set to false before you can delete an identity attribute.

[API Spec](https://developer.sailpoint.com/docs/api/v2024/delete-identity-attribute)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Name | **String** | True  | The attribute's technical name.

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | No content - indicates the request was successful but there is no content to be returned in the response. | 
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
$Name = "displayName" # String | The attribute's technical name.

# Delete identity attribute

try {
    Remove-V2024IdentityAttribute -Name $Name 
    
    # Below is a request that includes all optional parameters
    # Remove-V2024IdentityAttribute -Name $Name  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-V2024IdentityAttribute"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-identity-attributes-in-bulk
Use this API to bulk delete identity attributes for a given set of names. Attributes that are currently mapped in an identity profile cannot be deleted.  The `system` and `standard` properties must be set to 'false' before you can delete an identity attribute.

[API Spec](https://developer.sailpoint.com/docs/api/v2024/delete-identity-attributes-in-bulk)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | IdentityAttributeNames | [**IdentityAttributeNames**](../models/identity-attribute-names) | True  | 

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | No content - indicates the request was successful but there is no content to be returned in the response. | 
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
$IdentityAttributeNames = @"{
  "ids" : [ "name", "displayName" ]
}"@

# Bulk delete identity attributes

try {
    $Result = ConvertFrom-JsonToIdentityAttributeNames -Json $IdentityAttributeNames
    Remove-V2024IdentityAttributesInBulk -IdentityAttributeNames $Result 
    
    # Below is a request that includes all optional parameters
    # Remove-V2024IdentityAttributesInBulk -IdentityAttributeNames $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-V2024IdentityAttributesInBulk"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-identity-attribute
This gets an identity attribute for a given technical name.

[API Spec](https://developer.sailpoint.com/docs/api/v2024/get-identity-attribute)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Name | **String** | True  | The attribute's technical name.

### Return type
[**IdentityAttribute**](../models/identity-attribute)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | The identity attribute with the given name | IdentityAttribute
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
$Name = "displayName" # String | The attribute's technical name.

# Get identity attribute

try {
    Get-V2024IdentityAttribute -Name $Name 
    
    # Below is a request that includes all optional parameters
    # Get-V2024IdentityAttribute -Name $Name  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2024IdentityAttribute"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## list-identity-attributes
Use this API to get a collection of identity attributes.

[API Spec](https://developer.sailpoint.com/docs/api/v2024/list-identity-attributes)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | IncludeSystem | **Boolean** |   (optional) (default to $false) | Include 'system' attributes in the response.
  Query | IncludeSilent | **Boolean** |   (optional) (default to $false) | Include 'silent' attributes in the response.
  Query | SearchableOnly | **Boolean** |   (optional) (default to $false) | Include only 'searchable' attributes in the response.
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

### Return type
[**IdentityAttribute[]**](../models/identity-attribute)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | List of identity attributes. | IdentityAttribute[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessProfiles401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessProfiles429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$IncludeSystem = $false # Boolean | Include 'system' attributes in the response. (optional) (default to $false)
$IncludeSilent = $false # Boolean | Include 'silent' attributes in the response. (optional) (default to $false)
$SearchableOnly = $false # Boolean | Include only 'searchable' attributes in the response. (optional) (default to $false)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# List identity attributes

try {
    Get-V2024IdentityAttributes 
    
    # Below is a request that includes all optional parameters
    # Get-V2024IdentityAttributes -IncludeSystem $IncludeSystem -IncludeSilent $IncludeSilent -SearchableOnly $SearchableOnly -Count $Count  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2024IdentityAttributes"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## put-identity-attribute
This updates an existing identity attribute.  Making an attribute searchable requires that the `system`, `standard`, and `multi` properties be set to false.

[API Spec](https://developer.sailpoint.com/docs/api/v2024/put-identity-attribute)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Name | **String** | True  | The attribute's technical name.
 Body  | IdentityAttribute | [**IdentityAttribute**](../models/identity-attribute) | True  | 

### Return type
[**IdentityAttribute**](../models/identity-attribute)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | The identity attribute was updated successfully | IdentityAttribute
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
$Name = "displayName" # String | The attribute's technical name.
$IdentityAttribute = @"{
  "standard" : false,
  "system" : false,
  "sources" : [ {
    "type" : "rule",
    "properties" : {
      "ruleType" : "IdentityAttribute",
      "ruleName" : "Cloud Promote Identity Attribute"
    }
  }, {
    "type" : "rule",
    "properties" : {
      "ruleType" : "IdentityAttribute",
      "ruleName" : "Cloud Promote Identity Attribute"
    }
  } ],
  "displayName" : "Cost Center",
  "name" : "costCenter",
  "type" : "string",
  "searchable" : false,
  "multi" : false
}"@

# Update identity attribute

try {
    $Result = ConvertFrom-JsonToIdentityAttribute -Json $IdentityAttribute
    Send-V2024IdentityAttribute -Name $Name -IdentityAttribute $Result 
    
    # Below is a request that includes all optional parameters
    # Send-V2024IdentityAttribute -Name $Name -IdentityAttribute $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Send-V2024IdentityAttribute"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
