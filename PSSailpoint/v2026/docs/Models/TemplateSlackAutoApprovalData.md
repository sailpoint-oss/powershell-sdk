---
id: v2026-template-slack-auto-approval-data
title: TemplateSlackAutoApprovalData
pagination_label: TemplateSlackAutoApprovalData
sidebar_label: TemplateSlackAutoApprovalData
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'TemplateSlackAutoApprovalData', 'V2026TemplateSlackAutoApprovalData'] 
slug: /tools/sdk/powershell/v2026/models/template-slack-auto-approval-data
tags: ['SDK', 'Software Development Kit', 'TemplateSlackAutoApprovalData', 'V2026TemplateSlackAutoApprovalData']
---


# TemplateSlackAutoApprovalData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsAutoApproved** | **String** | Whether the request was auto-approved | [optional] 
**ItemId** | **String** | The item ID | [optional] 
**ItemType** | **String** | The item type | [optional] 
**AutoApprovalMessageJSON** | **String** | JSON message for auto-approval | [optional] 
**AutoApprovalTitle** | **String** | Title for auto-approval | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplateSlackAutoApprovalData = Initialize-V2026TemplateSlackAutoApprovalData  -IsAutoApproved null `
 -ItemId null `
 -ItemType null `
 -AutoApprovalMessageJSON null `
 -AutoApprovalTitle null
```

- Convert the resource to JSON
```powershell
$TemplateSlackAutoApprovalData | ConvertTo-JSON
```


[[Back to top]](#) 

