---
id: beta-campaign-activated
title: CampaignActivated
pagination_label: CampaignActivated
sidebar_label: CampaignActivated
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CampaignActivated', 'BetaCampaignActivated'] 
slug: /tools/sdk/powershell/beta/models/campaign-activated
tags: ['SDK', 'Software Development Kit', 'CampaignActivated', 'BetaCampaignActivated']
---


# CampaignActivated

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Campaign** | [**CampaignActivatedCampaign**](campaign-activated-campaign) |  | [required]

## Examples

- Prepare the resource
```powershell
$CampaignActivated = Initialize-PSSailpoint.BetaCampaignActivated  -Campaign null
$CampaignActivated = @"{  "Campaign": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToCampaignActivated -Json $CampaignActivated
```


[[Back to top]](#) 

