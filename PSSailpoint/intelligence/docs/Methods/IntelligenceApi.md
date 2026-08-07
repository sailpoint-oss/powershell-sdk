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

## Pagination

The aggregated Human GET embeds the first **10** items per paged slice. Each upstream paged call
sends &#x60;count&#x3D;true&#x60; and reads &#x60;X-Total-Count&#x60;. Parent slices expose &#x60;totalCount&#x60; when &#x60;items&#x60; is
non-empty and set &#x60;next&#x60; when &#x60;totalCount &gt; offset + len(items)&#x60; (aggregate offset is always 0).
Empty slices render as &#x60;items: []&#x60; with no &#x60;totalCount&#x60;. &#x60;privilegedAccess&#x60; is never paged and
carries no &#x60;totalCount&#x60;.

Human child routes (&#x60;/accounts&#x60;, &#x60;/outliers/rare-access&#x60;, &#x60;/access-history/*&#x60;) follow the
SailPoint V3 pattern: pass &#x60;count&#x3D;true&#x60; to receive &#x60;X-Total-Count&#x60; (including &#x60;0&#x60; on empty
pages). When &#x60;count&#x60; is omitted, upstream count work is skipped and the header is omitted.
 
  

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
access-history certifications. Each paged slice includes `totalCount` from upstream
`X-Total-Count` when `items` is non-empty, and carries a `next` continuation URL when
`totalCount` exceeds the items returned on this page. Empty slices render as `items: []` with no
`totalCount`. The privilegedAccess slice contains the full result and is not paged; it never
carries `next` or `totalCount`.
The outliers slice is omitted when the tenant lacks the IDA-outliers license.


[API Spec](https://developer.sailpoint.com/docs/api/get-identity-intelligence-v-1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Filters | **String** | True  | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **email**: *eq*

### Return type
[**IntelIdentityAggregate**](../models/intel-identity-aggregate)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Exactly one identity matched. | IntelIdentityAggregate
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetIdentityIntelligenceV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
409 | Multiple identities matched the filter. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetIdentityIntelligenceV1429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

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
Pass `count=true` to receive `X-Total-Count` (including `0` on empty pages).
Unsupported event types and per-record decode failures are dropped server-side.
Requires tenant license idn:response-and-remediation.


[API Spec](https://developer.sailpoint.com/docs/api/get-intel-identity-access-item-history-v-1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | Non-empty identity id path segment for Intelligence sub-resources.
  Query | Limit | **Int32** |   (optional) (default to 250) | Page size. Defaults to 250; values above 250 are rejected with 400.
  Query | Offset | **Int32** |   (optional) (default to 0) | Zero-based page offset. Defaults to 0.
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

### Return type
[**IntelAccessItemHistoryEvent[]**](../models/intel-access-item-history-event)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | One page of access-item history events. | IntelAccessItemHistoryEvent[]
400 | Invalid path or query parameters. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetIdentityIntelligenceV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetIdentityIntelligenceV1429Response
500 | Internal or upstream server failure. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Non-empty identity id path segment for Intelligence sub-resources.
$Limit = 250 # Int32 | Page size. Defaults to 250; values above 250 are rejected with 400. (optional) (default to 250)
$Offset = 0 # Int32 | Zero-based page offset. Defaults to 0. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# List identity access item history

try {
    Get-IntelIdentityAccessItemHistoryV1 -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-IntelIdentityAccessItemHistoryV1 -Id $Id -Limit $Limit -Offset $Offset -Count $Count  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-IntelIdentityAccessItemHistoryV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-intel-identity-accounts-v1
Continuation endpoint for the parent response's `accounts.next` link.
Returns one page of account rows for the supplied limit and offset values.
Pass `count=true` to receive `X-Total-Count` (including `0` on empty pages).
Requires tenant license idn:response-and-remediation.


[API Spec](https://developer.sailpoint.com/docs/api/get-intel-identity-accounts-v-1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | Non-empty identity id path segment for Intelligence sub-resources.
  Query | Limit | **Int32** |   (optional) (default to 250) | Page size. Defaults to 250; values above 250 are rejected with 400.
  Query | Offset | **Int32** |   (optional) (default to 0) | Zero-based page offset. Defaults to 0.
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

### Return type
[**IntelAccessAccountWire[]**](../models/intel-access-account-wire)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | One page of accounts. | IntelAccessAccountWire[]
400 | Invalid path or query parameters. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetIdentityIntelligenceV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetIdentityIntelligenceV1429Response
500 | Internal or upstream server failure. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Non-empty identity id path segment for Intelligence sub-resources.
$Limit = 250 # Int32 | Page size. Defaults to 250; values above 250 are rejected with 400. (optional) (default to 250)
$Offset = 0 # Int32 | Zero-based page offset. Defaults to 0. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# List identity accounts

try {
    Get-IntelIdentityAccountsV1 -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-IntelIdentityAccountsV1 -Id $Id -Limit $Limit -Offset $Offset -Count $Count  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-IntelIdentityAccountsV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-intel-identity-certification-history-v1
Continuation endpoint for the parent response's `accessHistory.certifications.next` link.
Returns one page of certification history events for the supplied limit and offset values.
Pass `count=true` to receive `X-Total-Count` (including `0` on empty pages).
Per-record decode failures are dropped server-side.
Requires tenant license idn:response-and-remediation.


[API Spec](https://developer.sailpoint.com/docs/api/get-intel-identity-certification-history-v-1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | Non-empty identity id path segment for Intelligence sub-resources.
  Query | Limit | **Int32** |   (optional) (default to 250) | Page size. Defaults to 250; values above 250 are rejected with 400.
  Query | Offset | **Int32** |   (optional) (default to 0) | Zero-based page offset. Defaults to 0.
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

### Return type
[**IntelCertificationHistoryEvent[]**](../models/intel-certification-history-event)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | One page of certification history events. | IntelCertificationHistoryEvent[]
400 | Invalid path or query parameters. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetIdentityIntelligenceV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetIdentityIntelligenceV1429Response
500 | Internal or upstream server failure. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Non-empty identity id path segment for Intelligence sub-resources.
$Limit = 250 # Int32 | Page size. Defaults to 250; values above 250 are rejected with 400. (optional) (default to 250)
$Offset = 0 # Int32 | Zero-based page offset. Defaults to 0. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# List identity certification history

try {
    Get-IntelIdentityCertificationHistoryV1 -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-IntelIdentityCertificationHistoryV1 -Id $Id -Limit $Limit -Offset $Offset -Count $Count  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-IntelIdentityCertificationHistoryV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-intel-identity-rare-access-v1
Continuation endpoint for the parent response's `outliers.rareAccess.next` link.
Resolves the identity's first outlier, then returns one page of rare access
items for the supplied limit and offset values. Pass `count=true` to receive
`X-Total-Count` (including `0` on empty pages). An identity with no outlier
returns an empty array with `X-Total-Count: 0` when `count=true`. Requires
tenant license idn:response-and-remediation and the IDA-outliers license.


[API Spec](https://developer.sailpoint.com/docs/api/get-intel-identity-rare-access-v-1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | Non-empty identity id path segment for Intelligence sub-resources.
  Query | Limit | **Int32** |   (optional) (default to 250) | Page size. Defaults to 250; values above 250 are rejected with 400.
  Query | Offset | **Int32** |   (optional) (default to 0) | Zero-based page offset. Defaults to 0.
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

### Return type
[**IntelOutlierAccessItem[]**](../models/intel-outlier-access-item)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | One page of rare access items. | IntelOutlierAccessItem[]
400 | Invalid path or query parameters. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetIdentityIntelligenceV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetIdentityIntelligenceV1429Response
500 | Internal or upstream server failure. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "ef38f94347e94562b5bb8424a56397d8" # String | Non-empty identity id path segment for Intelligence sub-resources.
$Limit = 250 # Int32 | Page size. Defaults to 250; values above 250 are rejected with 400. (optional) (default to 250)
$Offset = 0 # Int32 | Zero-based page offset. Defaults to 0. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)

# List identity rare access

try {
    Get-IntelIdentityRareAccessV1 -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-IntelIdentityRareAccessV1 -Id $Id -Limit $Limit -Offset $Offset -Count $Count  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-IntelIdentityRareAccessV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
