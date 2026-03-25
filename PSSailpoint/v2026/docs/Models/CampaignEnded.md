---
id: v2026-campaign-ended
title: CampaignEnded
pagination_label: CampaignEnded
sidebar_label: CampaignEnded
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CampaignEnded', 'V2026CampaignEnded'] 
slug: /tools/sdk/powershell/v2026/models/campaign-ended
tags: ['SDK', 'Software Development Kit', 'CampaignEnded', 'V2026CampaignEnded']
---


# CampaignEnded

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Campaign** | [**CampaignEndedCampaign**](campaign-ended-campaign) |  | [required]

## Examples

- Prepare the resource
```powershell
$CampaignEnded = Initialize-V2026CampaignEnded  -Campaign null
```

- Convert the resource to JSON
```powershell
$CampaignEnded | ConvertTo-JSON
```


[[Back to top]](#) 

