---
id: v2026-intelligence-package
title: IntelligencePackage
pagination_label: IntelligencePackage
sidebar_label: IntelligencePackage
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelligencePackage', 'V2026IntelligencePackage'] 
slug: /tools/sdk/powershell/v2026/methods/intelligence-package
tags: ['SDK', 'Software Development Kit', 'IntelligencePackage', 'V2026IntelligencePackage']
---

# IntelligencePackage
  Read-only HTTP API that returns the Intelligence Package (identity context)
for SecOps enrichment use cases (SIEM/SOAR connectors, MCP, browser
extension). Backed by Atlas internal-REST calls to MICE, Shelby List Accounts,
SDS Search, IDA-outliers, and identity-history.
 
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2026*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2026IntelIdentityAccess**](#get-intel-identity-access) | **GET** `/intelligence/identities/{identityID}/access` | Accounts merged with privileged data
[**Get-V2026IntelIdentityAccessHistory**](#get-intel-identity-access-history) | **GET** `/intelligence/identities/{identityID}/access-history` | Return identity access-history events
[**Get-V2026IntelIdentityRisk**](#get-intel-identity-risk) | **GET** `/intelligence/identities/{identityID}/risk` | Identity risk snapshot
[**Get-V2026IntelIdentityRiskOutliers**](#get-intel-identity-risk-outliers) | **GET** `/intelligence/identities/{identityID}/risk/outliers` | Risk outliers continuation paging
[**Search-V2026IntelIdentities**](#search-intel-identities) | **GET** `/intelligence/identities` | Resolve one identity by filter


## get-intel-identity-access
Requires tenant license idn:response-and-remediation.

Client-facing pagination (limit, offset, count) is not supported on this route.
The service issues one Shelby List Accounts request at the upstream maximum page size
and one SDS Search request per identity.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-intel-identity-access)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | IdentityID | **String** | True  | Non-empty identity id path segment for Intelligence Package sub-resources.

### Return type
[**IntelIdentityAccessBody**](../models/intel-identity-access-body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Accounts response. | IntelIdentityAccessBody
400 | Invalid path parameter. | ErrorBody
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal or upstream server failure. | ErrorBody
4XX | Upstream non-success passed through as-is. | 

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$IdentityID = "ef38f94347e94562b5bb8424a56397d8" # String | Non-empty identity id path segment for Intelligence Package sub-resources.

# Accounts merged with privileged data

try {
    Get-V2026IntelIdentityAccess -IdentityID $IdentityID 
    
    # Below is a request that includes all optional parameters
    # Get-V2026IntelIdentityAccess -IdentityID $IdentityID  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026IntelIdentityAccess"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-intel-identity-access-history
Requires tenant license idn:response-and-remediation.

Events are relayed from identity-history; optional limit, offset, and count
are forwarded to the upstream when supplied.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-intel-identity-access-history)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | IdentityID | **String** | True  | Non-empty identity id path segment for Intelligence Package sub-resources.
  Query | Limit | **Int32** |   (optional) | Maximum number of historical events to return in this page of results.
  Query | Offset | **Int32** |   (optional) | Zero-based index of the first event row to return for pagination.
  Query | Count | **Boolean** |   (optional) (default to $false) | When true, the service may include total count metadata alongside the result list.

### Return type
[**IntelIdentityAccessHistoryBody**](../models/intel-identity-access-history-body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Events relayed from identity-history. | IntelIdentityAccessHistoryBody
400 | Invalid path or query parameters. | ErrorBody
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal or upstream server failure. | ErrorBody
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
    Get-V2026IntelIdentityAccessHistory -IdentityID $IdentityID 
    
    # Below is a request that includes all optional parameters
    # Get-V2026IntelIdentityAccessHistory -IdentityID $IdentityID -Limit $Limit -Offset $Offset -Count $Count  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026IntelIdentityAccessHistory"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-intel-identity-risk
Risk snapshot envelope for the identity. The service resolves the first matching
outlier for identityID and returns one page of access-items plus an optional
continuation link for additional pages.

Clients should continue paging using _links.outliers.href when provided.
Requires tenant license idn:response-and-remediation.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-intel-identity-risk)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | IdentityID | **String** | True  | Non-empty identity id path segment for Intelligence Package sub-resources.

### Return type
[**IntelIdentityRiskBody**](../models/intel-identity-risk-body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Risk envelope with first page and optional continuation link. | IntelIdentityRiskBody
400 | Invalid path parameter. | ErrorBody
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal or upstream server failure. | ErrorBody

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$IdentityID = "ef38f94347e94562b5bb8424a56397d8" # String | Non-empty identity id path segment for Intelligence Package sub-resources.

# Identity risk snapshot

try {
    Get-V2026IntelIdentityRisk -IdentityID $IdentityID 
    
    # Below is a request that includes all optional parameters
    # Get-V2026IntelIdentityRisk -IdentityID $IdentityID  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026IntelIdentityRisk"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-intel-identity-risk-outliers
Continuation endpoint for risk outlier access-items. Returns one page based on
the supplied limit and offset values and includes an optional continuation link
when more rows remain. Requires tenant license idn:response-and-remediation.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-intel-identity-risk-outliers)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | IdentityID | **String** | True  | Non-empty identity id path segment for Intelligence Package sub-resources.
  Query | Limit | **Int32** |   (optional) (default to 250) | Maximum number of outlier rows to return for this page.
  Query | Offset | **Int32** |   (optional) (default to 0) | Zero-based row index for the first returned outlier item.

### Return type
[**IntelIdentityRiskBody**](../models/intel-identity-risk-body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | One page of outlier items plus optional continuation link. | IntelIdentityRiskBody
400 | Invalid path or query parameters. | ErrorBody
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal or upstream server failure. | ErrorBody

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$IdentityID = "ef38f94347e94562b5bb8424a56397d8" # String | Non-empty identity id path segment for Intelligence Package sub-resources.
$Limit = 250 # Int32 | Maximum number of outlier rows to return for this page. (optional) (default to 250)
$Offset = 0 # Int32 | Zero-based row index for the first returned outlier item. (optional) (default to 0)

# Risk outliers continuation paging

try {
    Get-V2026IntelIdentityRiskOutliers -IdentityID $IdentityID 
    
    # Below is a request that includes all optional parameters
    # Get-V2026IntelIdentityRiskOutliers -IdentityID $IdentityID -Limit $Limit -Offset $Offset  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026IntelIdentityRiskOutliers"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## search-intel-identities
Requires tenant license idn:response-and-remediation.

Returns the Intelligence Package envelope for the identity that matches the SCIM-style filters expression.
Supported queryable fields are id and email only.

A single match returns HTTP 200 with IntelIdentityResponse.

Zero matches returns HTTP 404 with detailCode IDC_IDENTITY_NOT_FOUND. 

Multiple matches returns HTTP 409 with detailCode IDC_IDENTITY_AMBIGUOUS and candidates listing each match.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/search-intel-identities)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Filters | **String** | True  | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **email**: *eq*

### Return type
[**IntelIdentityResponse**](../models/intel-identity-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | One identity matched. | IntelIdentityResponse
400 | Missing or invalid filters. | ErrorBody
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | No identity matched the filter. | IntelIdentityNotFoundBody
409 | Multiple identities matched the filter. | IntelIdentityAmbiguousBody
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Upstream or internal failure. | ErrorBody

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Filters = 'id eq "00000000-0000-0000-0000-000000000000"' # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq*  **email**: *eq*

# Resolve one identity by filter

try {
    Search-V2026IntelIdentities -Filters $Filters 
    
    # Below is a request that includes all optional parameters
    # Search-V2026IntelIdentities -Filters $Filters  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Search-V2026IntelIdentities"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
