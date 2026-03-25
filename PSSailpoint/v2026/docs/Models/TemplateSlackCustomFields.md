---
id: v2026-template-slack-custom-fields
title: TemplateSlackCustomFields
pagination_label: TemplateSlackCustomFields
sidebar_label: TemplateSlackCustomFields
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'TemplateSlackCustomFields', 'V2026TemplateSlackCustomFields'] 
slug: /tools/sdk/powershell/v2026/models/template-slack-custom-fields
tags: ['SDK', 'Software Development Kit', 'TemplateSlackCustomFields', 'V2026TemplateSlackCustomFields']
---


# TemplateSlackCustomFields

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestType** | **String** | The type of request | [optional] 
**ContainsDeny** | **String** | Whether the request contains a deny action | [optional] 
**CampaignId** | **String** | The campaign ID | [optional] 
**CampaignStatus** | **String** | The campaign status | [optional] 

## Examples

- Prepare the resource
```powershell
$TemplateSlackCustomFields = Initialize-V2026TemplateSlackCustomFields  -RequestType null `
 -ContainsDeny null `
 -CampaignId null `
 -CampaignStatus null
```

- Convert the resource to JSON
```powershell
$TemplateSlackCustomFields | ConvertTo-JSON
```


[[Back to top]](#) 

