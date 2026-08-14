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
  HTTP API that returns the Intelligence (identity context) for SecOps enrichment
use cases (SIEM/SOAR connectors, MCP, browser extension), and accepts asynchronous
response actions for remediation. Identity reads are backed by Atlas internal-REST
calls to MICE, Shelby List Accounts, SDS Search, IDA-outliers, and identity-history.

## License-based segmentation

- **&#x60;idn:response-and-remediation&#x60;** (required): enforced on all &#x60;/intelligence/*&#x60; routes.
- **&#x60;IDA-outliers&#x60;** (optional): governs the Human &#x60;outliers.rareAccess&#x60; slice only. When the
  tenant lacks this license, the &#x60;outliers&#x60; key is omitted.
- **&#x60;idg:base&#x60;** (optional): governs the root-level &#x60;identityGraph&#x60; deep link on aggregate
  responses. When the tenant lacks this license, &#x60;identityGraph&#x60; is omitted.

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
[**New-ResponseActionV1**](#create-response-action-v1) | **POST** `/intelligence/v1/response-actions` | Create a response action
[**Get-IdentityIntelligenceV1**](#get-identity-intelligence-v1) | **GET** `/intelligence/v1/identities` | Get identity by filter
[**Get-IntelIdentityAccessItemHistoryV1**](#get-intel-identity-access-item-history-v1) | **GET** `/intelligence/v1/identities/{id}/access-history/access-items` | List identity access item history
[**Get-IntelIdentityAccountsV1**](#get-intel-identity-accounts-v1) | **GET** `/intelligence/v1/identities/{id}/accounts` | List identity accounts
[**Get-IntelIdentityCertificationHistoryV1**](#get-intel-identity-certification-history-v1) | **GET** `/intelligence/v1/identities/{id}/access-history/certifications` | List identity certification history
[**Get-IntelIdentityRareAccessV1**](#get-intel-identity-rare-access-v1) | **GET** `/intelligence/v1/identities/{id}/outliers/rare-access` | List identity rare access
[**Get-ResponseActionStatusV1**](#get-response-action-status-v1) | **GET** `/intelligence/v1/response-actions/{id}/status` | Get response action status


## create-response-action-v1
Requires tenant license idn:response-and-remediation.

Creates a response action: the request is validated, a requestId (the correlation id) is
minted, the action is recorded as SUBMITTED, and an event is published that triggers the
correlated workflow(s).

Returns HTTP 202 with the requestId, an initial SUBMITTED status, and a statusUrl. Poll
GET /intelligence/v1/response-actions/{requestId}/status for progress.


[API Spec](https://developer.sailpoint.com/docs/api/create-response-action-v-1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | Responseactioncreaterequest | [**Responseactioncreaterequest**](../models/responseactioncreaterequest) | True  | 

### Return type
[**Responseactionaccepted**](../models/responseactionaccepted)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
202 | The response action was accepted and is being processed asynchronously. | Responseactionaccepted
400 | Missing or invalid request body. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetIdentityIntelligenceV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetIdentityIntelligenceV1429Response
500 | Internal or upstream server failure. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Responseactioncreaterequest = @"{
  "actionType" : "DISABLE_ACCOUNT",
  "identityType" : "HUMAN",
  "identityId" : "2c918085842e69ae018428c919680149",
  "accountIds" : [ "2c918085abc000000000000000000001" ],
  "context" : {
    "reason" : "Contain compromised account",
    "externalAlertId" : "CS-FALCON-12345",
    "source" : "CROWDSTRIKE",
    "operator" : "soc-analyst@customer.com"
  }
}"@

# Create a response action

try {
    $Result = ConvertFrom-JsonToResponseactioncreaterequest -Json $Responseactioncreaterequest
    New-ResponseActionV1 -Responseactioncreaterequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-ResponseActionV1 -Responseactioncreaterequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-ResponseActionV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-identity-intelligence-v1
Requires tenant license idn:response-and-remediation.

**Authentication and data segmentation**

Intelligence forwards the caller JWT to downstream identity and search services (context client).
Enriched results, including non-human identity resolution, are filtered to the caller's Data
Segmentation visibility.

**Caution:** Generic API Management API keys are not tied to a user identity. When Data
Segmentation is enabled, API key authentication may fail or return incomplete data because
downstream calls require a user context. Use a [personal access token](https://developer.sailpoint.com/docs/api/authentication/#generate-a-personal-access-token)
or other user-scoped OAuth token. See [API keys](https://documentation.sailpoint.com/saas/help/common/api_keys.html)
and [Data Segmentation](https://documentation.sailpoint.com/saas/help/segmentation/index.html).

Resolves exactly one identity using a single SCIM-style filters expression.

**Supported filters**

| Filter field | Lookup mode | Notes |
|---|---|---|
| id eq | Human (+ optional non-human identity when feature-flagged) | Resolves human identities by id; when non-human resolution is enabled, a parallel non-human lookup runs. If both match different identities, returns HTTP 409. |
| email eq | Human only | Human identity lookup by email only. |
| opaqueIdentifier eq | Non-human identity only | Parallel nativeIdentity eq on machine-identities and machine-accounts, then name-prefix fallback on machine-accounts. Requires feature flag ISCRR-1905_NHI_TYPE_MACHINE_FILTER_ENABLED; when disabled, returns HTTP 400. |

Single-clause filters only; composite and or expressions are rejected with HTTP 400.

**identityGraph deep link**

When the tenant has the idg:base license, Human and NHI aggregate responses may include
`identityGraph.href`, a deep link into the Identity Graph UI for the resolved identity.
Opening the link requires the **Identity Graph Read Only** user level. The link is omitted
when the tenant lacks idg:base.

**Human envelope (type Human)**

Embeds the first page (10 items) of each enrichment slice. Each paged slice includes totalCount
from upstream X-Total-Count when items is non-empty, and carries a next continuation URL when
totalCount exceeds the items returned on this page. Slices are always present (empty uses
items [] with no totalCount). privilegedAccess returns the full privileged-access result and never carries
next or totalCount. If any enrichment upstream fails, the whole request fails with HTTP 500,
except outliers, which is omitted (not an error) when the tenant lacks the IDA-outliers license
(upstream 401 or 403).

**Non-human identity envelope (type NHI)**

Returns flat non-human identity fields at the top level plus correlated machine accounts on the
aggregate and a derived block (isOrphaned, authorizedHumanIdentities, blastRadiusSummary).
Omits Human-only slices (privilegedAccess, outliers, accessHistory). Account paging via child
routes is not yet released. Opaque prefix resolution that deduplicates to one parent identity
returns HTTP 200 with matchConfidence partial; multiple distinct parent identities return HTTP 409
with IDC_IDENTITY_AMBIGUOUS and candidate id and displayName values.


[API Spec](https://developer.sailpoint.com/docs/api/get-identity-intelligence-v-1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Filters | **String** | True  | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **email**: *eq*  **opaqueIdentifier**: *eq*

### Return type
[**Intelidentityenvelope**](../models/intelidentityenvelope)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Exactly one identity matched. | Intelidentityenvelope
400 | Missing or invalid filters, unsupported filter field or operator, composite and or filter combination, or opaqueIdentifier lookup when non-human machine resolution is disabled for the tenant.  | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetIdentityIntelligenceV1401Response
403 | Unauthorized access | ErrorResponseDto
404 | No identity matched the filter (detailCode IDC_IDENTITY_NOT_FOUND). | IntelIdentityNotFoundBody
409 | Multiple identities matched the filter (detailCode IDC_IDENTITY_AMBIGUOUS), including human email or id multi-hit, human and machine id eq clash, and non-human opaque resolution ambiguity. Response includes candidates with id and displayName for refinement.  | Intelidentityambiguousbody
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetIdentityIntelligenceV1429Response
500 | Upstream or internal failure. Identity resolution may pass an upstream non-2xx through; enrichment-slice failures are sanitized to a generic HTTP 500.  | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Filters = 'id eq "ef38f94347e94562b5bb8424a56397d8"' # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **email**: *eq*  **opaqueIdentifier**: *eq*

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

Not applicable to non-human identities.


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
403 | Unauthorized access | ErrorResponseDto
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
Continuation endpoint for a Human identity's `accounts.next` link.
Returns one page of account rows for the supplied limit and offset values.
Pass `count=true` to receive `X-Total-Count` (including `0` on empty pages).
Not applicable to non-human identities (NHI accounts are returned on the NHI aggregate only).
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
403 | Unauthorized access | ErrorResponseDto
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

Not applicable to non-human identities.


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
403 | Unauthorized access | ErrorResponseDto
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

Not applicable to non-human identities (no outliers slice on the NHI envelope).


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
403 | Unauthorized access | ErrorResponseDto
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

## get-response-action-status-v1
Requires tenant license idn:response-and-remediation.

Returns the current aggregate status of a previously submitted response action, identified by
the requestId returned from POST /intelligence/v1/response-actions.

Supported actionType values: DISABLE_IDENTITY, DISABLE_ACCOUNT.


[API Spec](https://developer.sailpoint.com/docs/api/get-response-action-status-v-1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | The requestId of the response action to look up.

### Return type
[**Responseactionstatus**](../models/responseactionstatus)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | The current status of the response action. | Responseactionstatus
400 | Invalid path parameter. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetIdentityIntelligenceV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | No response action exists for the supplied requestId. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetIdentityIntelligenceV1429Response
500 | Internal or upstream server failure. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "3f1e6c9a-8b2d-4e5f-9a1b-2c3d4e5f6a7b" # String | The requestId of the response action to look up.

# Get response action status

try {
    Get-ResponseActionStatusV1 -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-ResponseActionStatusV1 -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-ResponseActionStatusV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
