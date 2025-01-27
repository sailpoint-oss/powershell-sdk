---
id: beta-campaign-generated-campaign-campaign-owner
title: CampaignGeneratedCampaignCampaignOwner
pagination_label: CampaignGeneratedCampaignCampaignOwner
sidebar_label: CampaignGeneratedCampaignCampaignOwner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CampaignGeneratedCampaignCampaignOwner'] 
slug: /tools/sdk/powershell/beta/models/campaign-generated-campaign-campaign-owner
tags: ['SDK', 'Software Development Kit', 'CampaignGeneratedCampaignCampaignOwner']
---


# CampaignGeneratedCampaignCampaignOwner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** |  **String** | The unique ID of the identity. | [required]
**DisplayName** |  **String** | The display name of the identity. | [required]
**Email** |  **String** | The primary email address of the identity. | [required]

## Examples

- Prepare the resource
```powershell
$CampaignGeneratedCampaignCampaignOwner = Initialize-PSSailpoint.BetaCampaignGeneratedCampaignCampaignOwner  -Id 37f080867702c1910177031320c40n27 `
 -DisplayName John Snow `
 -Email john.snow@example.com
```

- Convert the resource to JSON
```powershell
$CampaignGeneratedCampaignCampaignOwner | ConvertTo-JSON
```


[[Back to top]](#) 

