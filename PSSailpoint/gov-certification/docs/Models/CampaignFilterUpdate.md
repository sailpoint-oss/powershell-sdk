---
id: campaign-filter-update
title: CampaignFilterUpdate
pagination_label: CampaignFilterUpdate
sidebar_label: CampaignFilterUpdate
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CampaignFilterUpdate', 'CampaignFilterUpdate'] 
slug: /tools/sdk/powershell/govcertification/models/campaign-filter-update
tags: ['SDK', 'Software Development Kit', 'CampaignFilterUpdate', 'CampaignFilterUpdate']
---


# CampaignFilterUpdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | This is campaign filter's name. | [required]
**Description** | **String** | This is campaign filter's description. | [required]
**Mode** | **CampaignFilterType** |  | [required]
**CriteriaList** | [**[]Criteria**](criteria) | List of criteria. | [required]

## Examples

- Prepare the resource
```powershell
$CampaignFilterUpdate = Initialize-CampaignFilterUpdate  -Name Identity Attribute Campaign Filter `
 -Description Campaign filter to certify data based on specified property of Identity Attribute. `
 -Mode null `
 -CriteriaList [{"criteriaType":"IDENTITY","criteriaProperty":"DISPLAY_NAME","criteriaValue":"support","operation":"EQUALS"}]
```

- Convert the resource to JSON
```powershell
$CampaignFilterUpdate | ConvertTo-JSON
```


[[Back to top]](#) 

