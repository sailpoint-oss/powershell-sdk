---
id: v2026-workgroup-connection-dto
title: WorkgroupConnectionDto
pagination_label: WorkgroupConnectionDto
sidebar_label: WorkgroupConnectionDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkgroupConnectionDto', 'V2026WorkgroupConnectionDto'] 
slug: /tools/sdk/powershell/v2026/models/workgroup-connection-dto
tags: ['SDK', 'Software Development Kit', 'WorkgroupConnectionDto', 'V2026WorkgroupConnectionDto']
---


# WorkgroupConnectionDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Object** | [**WorkgroupConnectionDtoObject**](workgroup-connection-dto-object) |  | [optional] 
**ConnectionType** |  **Enum** [  "AccessRequestReviewer",    "Owner",    "ManagementWorkgroup" ] | Connection Type. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkgroupConnectionDto = Initialize-V2026WorkgroupConnectionDto  -Object null `
 -ConnectionType AccessRequestReviewer
```

- Convert the resource to JSON
```powershell
$WorkgroupConnectionDto | ConvertTo-JSON
```


[[Back to top]](#) 

