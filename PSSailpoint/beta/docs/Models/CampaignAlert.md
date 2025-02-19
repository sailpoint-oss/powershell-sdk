---
id: beta-campaign-alert
title: CampaignAlert
pagination_label: CampaignAlert
sidebar_label: CampaignAlert
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CampaignAlert', 'BetaCampaignAlert'] 
slug: /tools/sdk/powershell/beta/models/campaign-alert
tags: ['SDK', 'Software Development Kit', 'CampaignAlert', 'BetaCampaignAlert']
---


# CampaignAlert

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Level** |  **Enum** [  "ERROR",    "WARN",    "INFO" ] | Denotes the level of the message | [optional] 
**Localizations** | [**[]ErrorMessageDto**](error-message-dto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CampaignAlert = Initialize-PSSailpoint.BetaCampaignAlert  -Level ERROR `
 -Localizations null
$CampaignAlert = @"{  "Level": "ERROR", "Localizations": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToCampaignAlert -Json $CampaignAlert
```


[[Back to top]](#) 

