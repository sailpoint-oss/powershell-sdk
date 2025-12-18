---
id: v2025-application-discovery-response
title: ApplicationDiscoveryResponse
pagination_label: ApplicationDiscoveryResponse
sidebar_label: ApplicationDiscoveryResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApplicationDiscoveryResponse', 'V2025ApplicationDiscoveryResponse'] 
slug: /tools/sdk/powershell/v2025/models/application-discovery-response
tags: ['SDK', 'Software Development Kit', 'ApplicationDiscoveryResponse', 'V2025ApplicationDiscoveryResponse']
---


# ApplicationDiscoveryResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the Object | [optional] 
**Type** |  **Enum** [  "QUARTZ",    "QPOC",    "QUEUED_TASK" ] | Type of task for app discovery | [optional] 
**UniqueName** | **String** | Name of the task for app discovery | [optional] 
**Description** | **String** | Description of the app discovery aggregation | [optional] 
**ParentName** | **String** | Name of the parent of the task for app discovery | [optional] 
**Launcher** | **String** | Service to execute app discovery | [optional] 
**Target** | [**ApplicationDiscoveryResponseTarget**](application-discovery-response-target) |  | [optional] 
**Created** | **System.DateTime** | Creation date of app discovery task | [optional] 
**Modified** | **System.DateTime** | Last modification date of app discovery task | [optional] 
**Launched** | **System.DateTime** | Launch date of app discovery task | [optional] 
**Completed** | **System.DateTime** | Completion date of app discovery task | [optional] 
**TaskDefinitionSummary** | [**TaskDefinitionSummary**](task-definition-summary) |  | [optional] 
**CompletionStatus** |  **Enum** [  "SUCCESS",    "WARNING",    "ERROR",    "TERMINATED",    "TEMPERROR" ] | Completion status of app discovery task | [optional] 
**Messages** | [**[]TaskStatusMessage**](task-status-message) | Messages associated with the app discovery task | [optional] 
**Returns** | [**[]TaskReturnDetails**](task-return-details) | Return values associated with the app discovery task | [optional] 
**Attributes** | [**map[string]AnyType**]https://learn.microsoft.com/en-us/powershell/scripting/lang-spec/chapter-04?view=powershell-7.4 | Attributes of the app discovery task | [optional] 
**Progress** | **String** | Current progress of aggregation | [optional] 
**PercentComplete** | **Int32** | Current percentage completion of app discovery task | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationDiscoveryResponse = Initialize-V2025ApplicationDiscoveryResponse  -Id 8886e5e3-63d0-462f-a195-d98da885b8dc `
 -Type QUARTZ `
 -UniqueName Application Discovery - ID123 `
 -Description Application Discovery - From given dataset IDs `
 -ParentName Parent Task `
 -Launcher System `
 -Target null `
 -Created 2020-07-11T21:23:15Z `
 -Modified 2020-07-11T21:23:15Z `
 -Launched 2020-07-11T21:23:15Z `
 -Completed 2020-07-11T21:23:15Z `
 -TaskDefinitionSummary null `
 -CompletionStatus SUCCESS `
 -Messages null `
 -Returns null `
 -Attributes {creatorRequestId=ed5a371bbaba411fb8f1f6970b842334} `
 -Progress Started `
 -PercentComplete 100
```

- Convert the resource to JSON
```powershell
$ApplicationDiscoveryResponse | ConvertTo-JSON
```


[[Back to top]](#) 

