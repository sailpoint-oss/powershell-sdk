---
id: v2026-campaign-all-of-role-composition-campaign-info-remediator-ref
title: CampaignAllOfRoleCompositionCampaignInfoRemediatorRef
pagination_label: CampaignAllOfRoleCompositionCampaignInfoRemediatorRef
sidebar_label: CampaignAllOfRoleCompositionCampaignInfoRemediatorRef
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CampaignAllOfRoleCompositionCampaignInfoRemediatorRef', 'V2026CampaignAllOfRoleCompositionCampaignInfoRemediatorRef'] 
slug: /tools/sdk/powershell/v2026/models/campaign-all-of-role-composition-campaign-info-remediator-ref
tags: ['SDK', 'Software Development Kit', 'CampaignAllOfRoleCompositionCampaignInfoRemediatorRef', 'V2026CampaignAllOfRoleCompositionCampaignInfoRemediatorRef']
---


# CampaignAllOfRoleCompositionCampaignInfoRemediatorRef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "IDENTITY" ] | Legal Remediator Type | [required]
**Id** | **String** | The ID of the remediator. | [required]
**Name** | **String** | The name of the remediator. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$CampaignAllOfRoleCompositionCampaignInfoRemediatorRef = Initialize-V2026CampaignAllOfRoleCompositionCampaignInfoRemediatorRef  -Type IDENTITY `
 -Id 2c90ad2a70ace7d50170acf22ca90010 `
 -Name Role Admin
```

- Convert the resource to JSON
```powershell
$CampaignAllOfRoleCompositionCampaignInfoRemediatorRef | ConvertTo-JSON
```


[[Back to top]](#) 

