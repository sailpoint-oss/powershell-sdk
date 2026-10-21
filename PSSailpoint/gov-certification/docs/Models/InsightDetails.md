---
id: insight-details
title: InsightDetails
pagination_label: InsightDetails
sidebar_label: InsightDetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'InsightDetails', 'InsightDetails'] 
slug: /tools/sdk/powershell/govcertification/models/insight-details
tags: ['SDK', 'Software Development Kit', 'InsightDetails', 'InsightDetails']
---


# InsightDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Query** | **String** | Search query that selects the access included in the insight. | [optional] 
**IdentityIdFilter** | **[]String** | Identity IDs used to limit the insight to specific identities. | [optional] 
**Type** | **ScopedAccessType** |  | [optional] 
**CampaignType** |  **Enum** [  "IDENTITY" ] | The type of search campaign. Can only be IDENTITY | [optional] 

## Examples

- Prepare the resource
```powershell
$InsightDetails = Initialize-InsightDetails  -Query admin `
 -IdentityIdFilter ["2c918085718230600171993742c63558"] `
 -Type null `
 -CampaignType IDENTITY
```

- Convert the resource to JSON
```powershell
$InsightDetails | ConvertTo-JSON
```


[[Back to top]](#) 

