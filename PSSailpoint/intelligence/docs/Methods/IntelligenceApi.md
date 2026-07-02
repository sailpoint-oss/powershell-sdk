---
id: intelligence
title: Intelligence
pagination_label: Intelligence
sidebar_label: Intelligence
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelligence', 'Intelligence'] 
slug: /tools/sdk/powershell/intelligence/methods/intelligence
tags: ['SDK', 'Software Development Kit', 'Intelligence', 'Intelligence']
---

# Intelligence
  Read-only HTTP API that returns the Intelligence (identity context)
for SecOps enrichment use cases (SIEM/SOAR connectors, MCP, browser
extension). Backed by Atlas internal-REST calls to MICE, Shelby List Accounts,
SDS Search, IDA-outliers, and identity-history.
 
  

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-IdentityIntelligenceV1**](#get-identity-intelligence-v1) | **GET** `/intelligence/v1/identities` | Get identity by filter
[**Get-IntelIdentityAccessItemHistoryV1**](#get-intel-identity-access-item-history-v1) | **GET** `/intelligence/v1/identities/{id}/access-history/access-items` | List identity access item history
[**Get-IntelIdentityAccountsV1**](#get-intel-identity-accounts-v1) | **GET** `/intelligence/v1/identities/{id}/accounts` | List identity accounts
[**Get-IntelIdentityCertificationHistoryV1**](#get-intel-identity-certification-history-v1) | **GET** `/intelligence/v1/identities/{id}/access-history/certifications` | List identity certification history
[**Get-IntelIdentityRareAccessV1**](#get-intel-identity-rare-access-v1) | **GET** `/intelligence/v1/identities/{id}/outliers/rare-access` | List identity rare access


## get-identity-intelligence-v1
Requires tenant license idn:response-and-remediation.

Resolves exactly one identity by SCIM-style filters expression and returns the Intelligence envelope.
Supported queryable fields are id and email only.
The response embeds the first page of accounts, rare access, access-history access items, and
access-history certifications. Paged slices include a next link only when more results exist.
The privilegedAccess slice contains the full result and is not paged.
The outliers slice is omitted when the tenant lacks the IDA-outliers license.


[API Spec](https://developer.sailpoint.com/docs/api/get-identity-intelligence-v-1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Filters | **String** | True  | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **email**: *eq*

### Return type
[**Intelidentityaggregate**](../models/intelidentityaggregate)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Exactly one identity matched. | Intelidentityaggregate
400 | Client Error - Returned if the request body is invalid. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetIdentityIntelligenceV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | Errorresponsedto
409 | Multiple identities matched the filter. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetIdentityIntelligenceV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | Errorresponsedto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Filters = 'id eq "ef38f94347e94562b5bb8424a56397d8"' # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **email**: *eq*

# Get identity by filter

try {
    Get-IdentityIntelligenceV1 -Filters $Filters 
    
    # Below is a request that includes all optional parameters
    # Get-IdentityIntelligenceV1 -Filters $Filters  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-IdentityIntelligenceV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-intel-identity-access-item-history-v1
Continuation endpoint for the parent response's `accessHistory.accessItems.next` link.
Returns one page of access-item history events for the supplied limit and offset values.
Unsupported event types and per-record decode failures are dropped server-side.
Requires tenant license idn:response-and-remediation.


[API Spec](https://developer.sailpoint.com/docs/api/get-intel-identity-access-item-history-v-1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | Non-empty identity id path segment for Intelligence sub-resources.
  Query | Limit | **Int32** |   (optional) (default to 250) | Page size. Defaults to 250; values above 250 are rejected with 400.
  Query | Offset | **Int32** |   (optional) (default to 0) | Zero-based page offset. Defaults to 0.

### Return type
[**Intelaccessitemhistoryevent[]**](../models/intelaccessitemhistoryevent)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | One page of access-item history events. | Intelaccessitemhistoryevent[]
400 | Invalid path or query parameters. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetIdentityIntelligenceV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetIdentityIntelligenceV1429Response
500 | Internal or upstream server failure. | Errorresponsedto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Non-empty identity id path segment for Intelligence sub-resources.
$Limit = 250 # Int32 | Page size. Defaults to 250; values above 250 are rejected with 400. (optional) (default to 250)
$Offset = 0 # Int32 | Zero-based page offset. Defaults to 0. (optional) (default to 0)

# List identity access item history

try {
    Get-IntelIdentityAccessItemHistoryV1 -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-IntelIdentityAccessItemHistoryV1 -Id $Id -Limit $Limit -Offset $Offset  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-IntelIdentityAccessItemHistoryV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-intel-identity-accounts-v1
Continuation endpoint for the parent response's `accounts.next` link.
Returns one page of account rows for the supplied limit and offset values.
Requires tenant license idn:response-and-remediation.


[API Spec](https://developer.sailpoint.com/docs/api/get-intel-identity-accounts-v-1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | Non-empty identity id path segment for Intelligence sub-resources.
  Query | Limit | **Int32** |   (optional) (default to 250) | Page size. Defaults to 250; values above 250 are rejected with 400.
  Query | Offset | **Int32** |   (optional) (default to 0) | Zero-based page offset. Defaults to 0.

### Return type
[**Intelaccessaccountwire[]**](../models/intelaccessaccountwire)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | One page of accounts. | Intelaccessaccountwire[]
400 | Invalid path or query parameters. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetIdentityIntelligenceV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetIdentityIntelligenceV1429Response
500 | Internal or upstream server failure. | Errorresponsedto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Non-empty identity id path segment for Intelligence sub-resources.
$Limit = 250 # Int32 | Page size. Defaults to 250; values above 250 are rejected with 400. (optional) (default to 250)
$Offset = 0 # Int32 | Zero-based page offset. Defaults to 0. (optional) (default to 0)

# List identity accounts

try {
    Get-IntelIdentityAccountsV1 -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-IntelIdentityAccountsV1 -Id $Id -Limit $Limit -Offset $Offset  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-IntelIdentityAccountsV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-intel-identity-certification-history-v1
Continuation endpoint for the parent response's `accessHistory.certifications.next` link.
Returns one page of certification history events for the supplied limit and offset values.
Per-record decode failures are dropped server-side.
Requires tenant license idn:response-and-remediation.


[API Spec](https://developer.sailpoint.com/docs/api/get-intel-identity-certification-history-v-1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | Non-empty identity id path segment for Intelligence sub-resources.
  Query | Limit | **Int32** |   (optional) (default to 250) | Page size. Defaults to 250; values above 250 are rejected with 400.
  Query | Offset | **Int32** |   (optional) (default to 0) | Zero-based page offset. Defaults to 0.

### Return type
[**Intelcertificationhistoryevent[]**](../models/intelcertificationhistoryevent)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | One page of certification history events. | Intelcertificationhistoryevent[]
400 | Invalid path or query parameters. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetIdentityIntelligenceV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetIdentityIntelligenceV1429Response
500 | Internal or upstream server failure. | Errorresponsedto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Non-empty identity id path segment for Intelligence sub-resources.
$Limit = 250 # Int32 | Page size. Defaults to 250; values above 250 are rejected with 400. (optional) (default to 250)
$Offset = 0 # Int32 | Zero-based page offset. Defaults to 0. (optional) (default to 0)

# List identity certification history

try {
    Get-IntelIdentityCertificationHistoryV1 -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-IntelIdentityCertificationHistoryV1 -Id $Id -Limit $Limit -Offset $Offset  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-IntelIdentityCertificationHistoryV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-intel-identity-rare-access-v1
Continuation endpoint for the parent response's `outliers.rareAccess.next` link.
Resolves the identity's first outlier, then returns one page of rare access
items for the supplied limit and offset values. An identity with no outlier
returns an empty array. Requires tenant license idn:response-and-remediation
and the IDA-outliers license.


[API Spec](https://developer.sailpoint.com/docs/api/get-intel-identity-rare-access-v-1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | Non-empty identity id path segment for Intelligence sub-resources.
  Query | Limit | **Int32** |   (optional) (default to 250) | Page size. Defaults to 250; values above 250 are rejected with 400.
  Query | Offset | **Int32** |   (optional) (default to 0) | Zero-based page offset. Defaults to 0.

### Return type
[**Inteloutlieraccessitem[]**](../models/inteloutlieraccessitem)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | One page of rare access items. | Inteloutlieraccessitem[]
400 | Invalid path or query parameters. | Errorresponsedto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetIdentityIntelligenceV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetIdentityIntelligenceV1429Response
500 | Internal or upstream server failure. | Errorresponsedto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Non-empty identity id path segment for Intelligence sub-resources.
$Limit = 250 # Int32 | Page size. Defaults to 250; values above 250 are rejected with 400. (optional) (default to 250)
$Offset = 0 # Int32 | Zero-based page offset. Defaults to 0. (optional) (default to 0)

# List identity rare access

try {
    Get-IntelIdentityRareAccessV1 -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-IntelIdentityRareAccessV1 -Id $Id -Limit $Limit -Offset $Offset  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-IntelIdentityRareAccessV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
