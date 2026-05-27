---
id: v2026-prompt-insights
title: PromptInsights
pagination_label: PromptInsights
sidebar_label: PromptInsights
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PromptInsights', 'V2026PromptInsights'] 
slug: /tools/sdk/powershell/v2026/methods/prompt-insights
tags: ['SDK', 'Software Development Kit', 'PromptInsights', 'V2026PromptInsights']
---

# PromptInsights
  Use this API to retrieve prompt security insights and aggregate metrics for AI agent prompt activity.
With this functionality in place, administrators can review prompt events and their policy decisions,
filter insights by policy decision, category, severity, and other attributes, and view summary metrics
for scanned and redacted prompts over configurable time windows.

Policy decisions indicate whether a prompt was allowed or redacted. Insight categories include anomalies,
data uploads, and MCP tool calls. Supported filter fields include policy decision, category, severity,
user, agent, reason, rule, and policy.
 
  

All URIs are relative to *https://sailpoint.api.identitynow.com/v2026*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-V2026PromptInsightsMetrics**](#get-prompt-insights-metrics) | **GET** `/prompt-insights/metrics` | Get prompt insights metrics
[**Get-V2026PromptInsights**](#list-prompt-insights) | **GET** `/prompt-insights` | List prompt insights


## get-prompt-insights-metrics
Returns aggregate prompt insights metrics for the requested time window.

[API Spec](https://developer.sailpoint.com/docs/api/v2026/get-prompt-insights-metrics)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Interval | **String** | True  | Relative lookback window for metrics aggregation.

### Return type
[**PromptInsightsMetrics**](../models/prompt-insights-metrics)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Aggregate prompt insights metrics for the requested interval. | PromptInsightsMetrics
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
$Interval = "-1h" # String | Relative lookback window for metrics aggregation.

# Get prompt insights metrics

try {
    Get-V2026PromptInsightsMetrics -Interval $Interval 
    
    # Below is a request that includes all optional parameters
    # Get-V2026PromptInsightsMetrics -Interval $Interval  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026PromptInsightsMetrics"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## list-prompt-insights
Returns a paginated list of prompt insights within a lookback window, with optional structured filters. Results are sorted by timestamp descending (most recent first).

[API Spec](https://developer.sailpoint.com/docs/api/v2026/list-prompt-insights)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | Interval | **String** | True  | Relative lookback window for prompt insights.
  Query | Limit | **Int32** |   (optional) (default to 250) | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Offset | **Int32** |   (optional) (default to 0) | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Filters | **String** |   (optional) | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **policyDecision**: *eq*  **category**: *eq*  **severity**: *eq*  **user**: *eq, sw, co*  **agent**: *eq, sw, co*  **reason**: *eq, sw, co*  **rule**: *eq, sw, co*  **policy**: *eq, sw, co*

### Return type
[**PromptInsight[]**](../models/prompt-insight)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | A paginated list of prompt insight events. | PromptInsight[]
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
$Interval = "-1h" # String | Relative lookback window for prompt insights.
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Filters = 'policyDecision eq "REDACTED" and severity eq "CRITICAL"' # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **policyDecision**: *eq*  **category**: *eq*  **severity**: *eq*  **user**: *eq, sw, co*  **agent**: *eq, sw, co*  **reason**: *eq, sw, co*  **rule**: *eq, sw, co*  **policy**: *eq, sw, co* (optional)

# List prompt insights

try {
    Get-V2026PromptInsights -Interval $Interval 
    
    # Below is a request that includes all optional parameters
    # Get-V2026PromptInsights -Interval $Interval -Limit $Limit -Offset $Offset -Filters $Filters  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-V2026PromptInsights"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
