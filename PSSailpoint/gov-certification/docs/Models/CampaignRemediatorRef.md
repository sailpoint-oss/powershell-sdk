---
id: campaign-remediator-ref
title: CampaignRemediatorRef
pagination_label: CampaignRemediatorRef
sidebar_label: CampaignRemediatorRef
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CampaignRemediatorRef', 'CampaignRemediatorRef'] 
slug: /tools/sdk/powershell/govcertification/models/campaign-remediator-ref
tags: ['SDK', 'Software Development Kit', 'CampaignRemediatorRef', 'CampaignRemediatorRef']
---


# CampaignRemediatorRef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the remediator. | [required]
**Name** | **String** | The name of the remediator. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$CampaignRemediatorRef = Initialize-CampaignRemediatorRef  -Id 2c90ad2a70ace7d50170acf22ca90010 `
 -Name Role Admin
```

- Convert the resource to JSON
```powershell
$CampaignRemediatorRef | ConvertTo-JSON
```


[[Back to top]](#) 

