---
id: v2026-shared-signals-framework-ssf
title: SharedSignalsFrameworkSSF
pagination_label: SharedSignalsFrameworkSSF
sidebar_label: SharedSignalsFrameworkSSF
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SharedSignalsFrameworkSSF', 'V2026SharedSignalsFrameworkSSF'] 
slug: /tools/sdk/powershell/v2026/methods/shared-signals-framework-ssf
tags: ['SDK', 'Software Development Kit', 'SharedSignalsFrameworkSSF', 'V2026SharedSignalsFrameworkSSF']
---

# SharedSignalsFrameworkSSF
  The SSF Transmitter Service is a security event notification system that monitors identity attribute changes
and automatically triggers session revocation events when specific lifecycle conditions are met.

Use this API to implement transmitter functionality so administrators can discover the transmitter and manage streams.
Transmitters send identity data and events from Identity Security Cloud to external receivers over the Secure Sync Framework (SSF).
The SSF configuration and JWKS endpoints support discovery and verification; the stream management endpoints support creating, updating, and managing streams and verifying receivers.
In Identity Security Cloud, administrators can use the &quot;Connections&quot; &gt; &quot;Shared Signals&quot; area to view and manage transmitters and their streams.
 
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2026*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-V2026Stream**](#create-stream) | **POST** `/ssf/streams` | Create stream
[**Remove-V2026Stream**](#delete-stream) | **DELETE** `/ssf/streams` | Delete stream
[**Get-V2026JWKSData**](#get-jwks-data) | **GET** `/ssf/jwks` | Get JWKS
[**Get-V2026SSFConfiguration**](#get-ssf-configuration) | **GET** `/.well-known/ssf-configuration` | Get SSF configuration
[**Get-V2026Stream**](#get-stream) | **GET** `/ssf/streams` | Get stream(s)
[**Get-V2026StreamStatus**](#get-stream-status) | **GET** `/ssf/streams/status` | Get stream status
[**Send-V2026StreamVerification**](#send-stream-verification) | **POST** `/ssf/streams/verify` | Verify stream
[**Set-V2026StreamConfiguration**](#set-stream-configuration) | **PUT** `/ssf/streams` | Replace stream configuration
[**Update-V2026StreamConfiguration**](#update-stream-configuration) | **PATCH** `/ssf/streams` | Update stream configuration
[**Update-V2026StreamStatus**](#update-stream-status) | **POST** `/ssf/streams/status` | Update stream status


## create-stream
An SSF stream is associated with the client ID of the OAuth 2.0 access token used to create the stream.
One SSF stream is allowed for each client ID.

You can create a maximum of 10 SSF stream configurations for one org.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/create-stream)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateStreamRequest | [**CreateStreamRequest**](../models/create-stream-request) | True  | 

### Return type
[**StreamConfigResponse**](../models/stream-config-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
201 | Stream created. | StreamConfigResponse
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateStreamRequest = @"{
  "delivery" : {
    "method" : "urn:ietf:rfc:8935",
    "endpoint_url" : "https://receiver.example.com/ssf/events",
    "authorization_header" : "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9..."
  },
  "description" : "Production event stream",
  "events_requested" : [ "https://schemas.openid.net/secevent/caep/event-type/session-revoked" ]
}"@

# Create stream

try {
    $Result = ConvertFrom-V2026JsonToCreateStreamRequest -Json $CreateStreamRequest
    New-V2026Stream -CreateStreamRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-V2026Stream -CreateStreamRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-V2026Stream"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-stream
Deletes a stream by its ID. There is no request body; the stream is identified by the required
query parameter `stream_id`. On success the response has no body (204 No Content).

The associated stream with the client ID (through the request OAuth 2.0 access token) is deleted.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/delete-stream)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | StreamId | **String** | True  | ID of the stream to delete. Required; omitted or empty returns 400.

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | No content - indicates the request was successful but there is no content to be returned in the response. | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$StreamId = "550e8400-e29b-41d4-a716-446655440000" # String | ID of the stream to delete. Required; omitted or empty returns 400.

# Delete stream

try {
    Remove-V2026Stream -StreamId $StreamId 
    
    # Below is a request that includes all optional parameters
    # Remove-V2026Stream -StreamId $StreamId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-V2026Stream"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-jwks-data
Returns the transmitter's JSON Web Key Set (JWKS) for verifying signed delivery requests.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-jwks-data)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 

### Return type
[**JWKS**](../models/jwks)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | JSON Web Key Set (RFC 7517) containing the transmitter&#39;s public keys. | JWKS
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell

# Get JWKS

try {
    Get-V2026JWKSData 
    
    # Below is a request that includes all optional parameters
    # Get-V2026JWKSData  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026JWKSData"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-ssf-configuration
Returns the SSF transmitter discovery metadata (well-known configuration).

[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-ssf-configuration)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 

### Return type
[**TransmitterMetadata**](../models/transmitter-metadata)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | SSF transmitter configuration (issuer, jwks_uri, endpoints, authorization_schemes). | TransmitterMetadata
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell

# Get SSF configuration

try {
    Get-V2026SSFConfiguration 
    
    # Below is a request that includes all optional parameters
    # Get-V2026SSFConfiguration  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026SSFConfiguration"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-stream
Retrieves either a list of all SSF stream configurations or the individual configuration if specified by ID.

As stream configurations are tied to a client ID, you can only view the stream associated with the client ID
of the request OAuth 2.0 access token.

Query parameter `aud` (co filter) can be used to filter by audience.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-stream)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | StreamId | **String** |   (optional) | If provided, returns that stream; otherwise returns list of all streams.

### Return type
[**GetStream200Response**](../models/get-stream200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Single stream (when stream_id is provided) or list of streams (when stream_id is omitted). | GetStream200Response
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$StreamId = "550e8400-e29b-41d4-a716-446655440000" # String | If provided, returns that stream; otherwise returns list of all streams. (optional)

# Get stream(s)

try {
    Get-V2026Stream 
    
    # Below is a request that includes all optional parameters
    # Get-V2026Stream -StreamId $StreamId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026Stream"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-stream-status
Returns the status (enabled, paused, disabled) and optional reason for the stream associated with the client ID of the request's OAuth 2.0 access token. The stream_id query parameter is required.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-stream-status)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | StreamId | **String** | True  | ID of the stream whose status to retrieve.

### Return type
[**StreamStatusResponse**](../models/stream-status-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Stream status (enabled, paused, or disabled; reason may be set when status was updated). | StreamStatusResponse
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$StreamId = "550e8400-e29b-41d4-a716-446655440000" # String | ID of the stream whose status to retrieve.

# Get stream status

try {
    Get-V2026StreamStatus -StreamId $StreamId 
    
    # Below is a request that includes all optional parameters
    # Get-V2026StreamStatus -StreamId $StreamId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026StreamStatus"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## send-stream-verification
Verifies an SSF stream by publishing a verification event requested by a security events provider.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/send-stream-verification)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | VerificationRequest | [**VerificationRequest**](../models/verification-request) | True  | 

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | No content - indicates the request was successful but there is no content to be returned in the response. | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$VerificationRequest = @"{
  "stream_id" : "550e8400-e29b-41d4-a716-446655440000",
  "state" : "verification-challenge-state-123"
}"@

# Verify stream

try {
    $Result = ConvertFrom-V2026JsonToVerificationRequest -Json $VerificationRequest
    Send-V2026StreamVerification -VerificationRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Send-V2026StreamVerification -VerificationRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Send-V2026StreamVerification"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## set-stream-configuration
Replaces a stream's configuration (PUT). stream_id and delivery are required; full receiver-supplied properties.

The associated stream with the client ID (through the request OAuth 2.0 access token) is replaced.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/set-stream-configuration)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | ReplaceStreamConfigurationRequest | [**ReplaceStreamConfigurationRequest**](../models/replace-stream-configuration-request) | True  | 

### Return type
[**UpdateStreamConfigResponse**](../models/update-stream-config-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Replaced stream configuration (same JSON shape as PATCH/GET single stream). | UpdateStreamConfigResponse
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$ReplaceStreamConfigurationRequest = @"{
  "delivery" : {
    "method" : "urn:ietf:rfc:8935",
    "endpoint_url" : "https://receiver.example.com/ssf/events",
    "authorization_header" : "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9..."
  },
  "stream_id" : "550e8400-e29b-41d4-a716-446655440000",
  "description" : "Production event stream",
  "events_requested" : [ "https://schemas.openid.net/secevent/caep/event-type/session-revoked" ]
}"@

# Replace stream configuration

try {
    $Result = ConvertFrom-V2026JsonToReplaceStreamConfigurationRequest -Json $ReplaceStreamConfigurationRequest
    Set-V2026StreamConfiguration -ReplaceStreamConfigurationRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Set-V2026StreamConfiguration -ReplaceStreamConfigurationRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Set-V2026StreamConfiguration"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-stream-configuration
Partially updates a stream's configuration (PATCH). Only provided fields are updated.

The associated stream with the client ID (through the request OAuth 2.0 access token) is updated.


[API Spec](https://developer.sailpoint.com/docs/api/v2026/update-stream-configuration)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | UpdateStreamConfigurationRequest | [**UpdateStreamConfigurationRequest**](../models/update-stream-configuration-request) | True  | 

### Return type
[**UpdateStreamConfigResponse**](../models/update-stream-config-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Updated stream configuration (same JSON shape as GET single stream, plus updatedAt). | UpdateStreamConfigResponse
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$UpdateStreamConfigurationRequest = @"{
  "delivery" : {
    "method" : "urn:ietf:rfc:8935",
    "endpoint_url" : "https://receiver.example.com/ssf/events",
    "authorization_header" : "Bearer eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9..."
  },
  "stream_id" : "550e8400-e29b-41d4-a716-446655440000",
  "description" : "Updated production event stream configuration",
  "events_requested" : [ "https://schemas.openid.net/secevent/caep/event-type/session-revoked" ]
}"@

# Update stream configuration

try {
    $Result = ConvertFrom-V2026JsonToUpdateStreamConfigurationRequest -Json $UpdateStreamConfigurationRequest
    Update-V2026StreamConfiguration -UpdateStreamConfigurationRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-V2026StreamConfiguration -UpdateStreamConfigurationRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-V2026StreamConfiguration"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## update-stream-status
Updates the operational status (enabled, paused, disabled) with an optional reason for the stream associated with the client ID of the request's OAuth 2.0 access token.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/update-stream-status)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | UpdateStreamStatusRequest | [**UpdateStreamStatusRequest**](../models/update-stream-status-request) | True  | 

### Return type
[**StreamStatusResponse**](../models/stream-status-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Updated stream status (same JSON shape as GET /ssf/streams/status). | StreamStatusResponse
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | GetAccessRequestConfig401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | GetAccessRequestConfig429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$UpdateStreamStatusRequest = @"{
  "reason" : "manually paused",
  "stream_id" : "550e8400-e29b-41d4-a716-446655440000",
  "status" : "paused"
}"@

# Update stream status

try {
    $Result = ConvertFrom-V2026JsonToUpdateStreamStatusRequest -Json $UpdateStreamStatusRequest
    Update-V2026StreamStatus -UpdateStreamStatusRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-V2026StreamStatus -UpdateStreamStatusRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-V2026StreamStatus"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
