---
id: list-campaign-filters-v1401-response
title: ListCampaignFiltersV1401Response
pagination_label: ListCampaignFiltersV1401Response
sidebar_label: ListCampaignFiltersV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListCampaignFiltersV1401Response', 'ListCampaignFiltersV1401Response'] 
slug: /tools/sdk/powershell/certificationcampaignfiltersv1/models/list-campaign-filters-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListCampaignFiltersV1401Response', 'ListCampaignFiltersV1401Response']
---


# ListCampaignFiltersV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListCampaignFiltersV1401Response = Initialize-ListCampaignFiltersV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListCampaignFiltersV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

