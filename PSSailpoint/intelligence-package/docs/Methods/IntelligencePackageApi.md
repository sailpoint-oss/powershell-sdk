---
id: intelligence-package
title: IntelligencePackage
pagination_label: IntelligencePackage
sidebar_label: IntelligencePackage
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelligencePackage', 'IntelligencePackage'] 
slug: /tools/sdk/powershell/intelligencepackagev1/methods/intelligence-package
tags: ['SDK', 'Software Development Kit', 'IntelligencePackage', 'IntelligencePackage']
---

# IntelligencePackage
  Read-only HTTP API that returns the Intelligence Package (identity context)
for SecOps enrichment use cases (SIEM/SOAR connectors, MCP, browser
extension). Backed by Atlas internal-REST calls to MICE, Shelby List Accounts,
SDS Search, and identity-history.
 
  

All URIs are relative to *https://sailpoint.api.identitynow.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-IntelIdentityAccessHistoryV1**](#get-intel-identity-access-history-v1) | **GET** `/intelligence/v1/identities/{identityID}/access-history` | Return identity access-history events
[**Get-IntelIdentityAccessV1**](#get-intel-identity-access-v1) | **GET** `/intelligence/v1/identities/{identityID}/access` | Accounts merged with privileged data
[**Search-IntelIdentitiesV1**](#search-intel-identities-v1) | **GET** `/intelligence/v1/identities` | Resolve one identity by filter


## get-intel-identity-access-history-v1
Requires tenant license idn:response-and-remediation.

Events are relayed from identity-history; optional limit, offset, and count
are forwarded to the upstream when supplied.


[API Spec](https://developer.sailpoint.com/docs/api/v1/get-intel-identity-access-history-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | IdentityID | **String** | True  | Non-empty identity id path segment for Intelligence Package sub-resources.
  Query | Limit | **Int32** |   (optional) | Maximum number of historical events to return in this page of results.
  Query | Offset | **Int32** |   (optional) | Zero-based index of the first event row to return for pagination.
  Query | Count | **Boolean** |   (optional) (default to $false) | When true, the service may include total count metadata alongside the result list.

### Return type
[**Intelidentityaccesshistorybody**](../models/intelidentityaccesshistorybody)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Events relayed from identity-history. | Intelidentityaccesshistorybody
400 | Invalid path or query parameters. | Errorbody
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | SearchIntelIdentitiesV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | SearchIntelIdentitiesV1429Response
500 | Internal or upstream server failure. | Errorbody
4XX | Upstream non-success passed through as-is. | 

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$IdentityID = "ef38f94347e94562b5bb8424a56397d8" # String | Non-empty identity id path segment for Intelligence Package sub-resources.
$Limit = 100 # Int32 | Maximum number of historical events to return in this page of results. (optional)
$Offset = 0 # Int32 | Zero-based index of the first event row to return for pagination. (optional)
$Count = $false # Boolean | When true, the service may include total count metadata alongside the result list. (optional) (default to $false)

# Return identity access-history events

try {
    Get-IntelIdentityAccessHistoryV1 -IdentityID $IdentityID 
    
    # Below is a request that includes all optional parameters
    # Get-IntelIdentityAccessHistoryV1 -IdentityID $IdentityID -Limit $Limit -Offset $Offset -Count $Count  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-IntelIdentityAccessHistoryV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-intel-identity-access-v1
Requires tenant license idn:response-and-remediation.

Client-facing pagination (limit, offset, count) is not supported on this route.
The service issues one Shelby List Accounts request at the upstream maximum page size
and one SDS Search request per identity.


[API Spec](https://developer.sailpoint.com/docs/api/v1/get-intel-identity-access-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | IdentityID | **String** | True  | Non-empty identity id path segment for Intelligence Package sub-resources.

### Return type
[**Intelidentityaccessbody**](../models/intelidentityaccessbody)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Accounts response. | Intelidentityaccessbody
400 | Invalid path parameter. | Errorbody
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | SearchIntelIdentitiesV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | SearchIntelIdentitiesV1429Response
500 | Internal or upstream server failure. | Errorbody
4XX | Upstream non-success passed through as-is. | 

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$IdentityID = "ef38f94347e94562b5bb8424a56397d8" # String | Non-empty identity id path segment for Intelligence Package sub-resources.

# Accounts merged with privileged data

try {
    Get-IntelIdentityAccessV1 -IdentityID $IdentityID 
    
    # Below is a request that includes all optional parameters
    # Get-IntelIdentityAccessV1 -IdentityID $IdentityID  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-IntelIdentityAccessV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## search-intel-identities-v1
Requires tenant license idn:response-and-remediation.

Returns the Intelligence Package envelope for the identity that matches the SCIM-style filters expression.
Supported queryable fields are id and email only.

A single match returns HTTP 200 with IntelIdentityResponse.

Zero matches returns HTTP 404 with detailCode IDC_IDENTITY_NOT_FOUND. 

Multiple matches returns HTTP 409 with detailCode IDC_IDENTITY_AMBIGUOUS and candidates listing each match.


[API Spec](https://developer.sailpoint.com/docs/api/v1/search-intel-identities-v1)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Filters | **String** | True  | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **email**: *eq*

### Return type
[**Intelidentityresponse**](../models/intelidentityresponse)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | One identity matched. | Intelidentityresponse
400 | Missing or invalid filters. | Errorbody
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | SearchIntelIdentitiesV1401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | Errorresponsedto
404 | No identity matched the filter. | Intelidentitynotfoundbody
409 | Multiple identities matched the filter. | Intelidentityambiguousbody
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | SearchIntelIdentitiesV1429Response
500 | Upstream or internal failure. | Errorbody

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Filters = "id eq "00000000-0000-0000-0000-000000000000"" # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **email**: *eq*

# Resolve one identity by filter

try {
    Search-IntelIdentitiesV1 -Filters $Filters 
    
    # Below is a request that includes all optional parameters
    # Search-IntelIdentitiesV1 -Filters $Filters  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Search-IntelIdentitiesV1"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
