---
id: template-slack-custom-fields
title: TemplateSlackCustomFields
pagination_label: TemplateSlackCustomFields
sidebar_label: TemplateSlackCustomFields
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'TemplateSlackCustomFields', 'TemplateSlackCustomFields'] 
slug: /tools/sdk/powershell/notifications/models/template-slack-custom-fields
tags: ['SDK', 'Software Development Kit', 'TemplateSlackCustomFields', 'TemplateSlackCustomFields']
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
$TemplateSlackCustomFields = Initialize-TemplateSlackCustomFields  -RequestType null `
 -ContainsDeny null `
 -CampaignId null `
 -CampaignStatus null
```

- Convert the resource to JSON
```powershell
$TemplateSlackCustomFields | ConvertTo-JSON
```


[[Back to top]](#) 

