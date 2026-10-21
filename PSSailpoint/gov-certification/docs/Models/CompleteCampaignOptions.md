---
id: complete-campaign-options
title: CompleteCampaignOptions
pagination_label: CompleteCampaignOptions
sidebar_label: CompleteCampaignOptions
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CompleteCampaignOptions', 'CompleteCampaignOptions'] 
slug: /tools/sdk/powershell/govcertification/models/complete-campaign-options
tags: ['SDK', 'Software Development Kit', 'CompleteCampaignOptions', 'CompleteCampaignOptions']
---


# CompleteCampaignOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AutoCompleteAction** |  **Enum** [  "APPROVE",    "REVOKE" ] | Determines whether to auto-approve(APPROVE) or auto-revoke(REVOKE) upon campaign completion. | [optional] [default to "APPROVE"]

## Examples

- Prepare the resource
```powershell
$CompleteCampaignOptions = Initialize-CompleteCampaignOptions  -AutoCompleteAction REVOKE
```

- Convert the resource to JSON
```powershell
$CompleteCampaignOptions | ConvertTo-JSON
```


[[Back to top]](#) 

