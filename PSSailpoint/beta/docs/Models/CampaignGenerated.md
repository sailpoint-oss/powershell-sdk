---
id: beta-campaign-generated
title: CampaignGenerated
pagination_label: CampaignGenerated
sidebar_label: CampaignGenerated
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CampaignGenerated', 'BetaCampaignGenerated'] 
slug: /tools/sdk/powershell/beta/models/campaign-generated
tags: ['SDK', 'Software Development Kit', 'CampaignGenerated', 'BetaCampaignGenerated']
---


# CampaignGenerated

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Campaign** | [**CampaignGeneratedCampaign**](campaign-generated-campaign) |  | [required]

## Examples

- Prepare the resource
```powershell
$CampaignGenerated = Initialize-PSSailpoint.BetaCampaignGenerated  -Campaign null
$CampaignGenerated = @"{  "Campaign": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToCampaignGenerated -Json $CampaignGenerated
```


[[Back to top]](#) 

