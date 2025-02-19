---
id: v2024-patch-service-desk-integration-request
title: PatchServiceDeskIntegrationRequest
pagination_label: PatchServiceDeskIntegrationRequest
sidebar_label: PatchServiceDeskIntegrationRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PatchServiceDeskIntegrationRequest', 'V2024PatchServiceDeskIntegrationRequest'] 
slug: /tools/sdk/powershell/v2024/models/patch-service-desk-integration-request
tags: ['SDK', 'Software Development Kit', 'PatchServiceDeskIntegrationRequest', 'V2024PatchServiceDeskIntegrationRequest']
---


# PatchServiceDeskIntegrationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operations** | [**[]JsonPatchOperation**](json-patch-operation) | Operations to be applied | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchServiceDeskIntegrationRequest = Initialize-PSSailpoint.V2024PatchServiceDeskIntegrationRequest  -Operations null
$PatchServiceDeskIntegrationRequest = @"{  "Operations": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToPatchServiceDeskIntegrationRequest -Json $PatchServiceDeskIntegrationRequest
```


[[Back to top]](#) 

