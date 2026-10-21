---
id: list-gov-certification-campaign-filters-v1401-response
title: ListGovCertificationCampaignFiltersV1401Response
pagination_label: ListGovCertificationCampaignFiltersV1401Response
sidebar_label: ListGovCertificationCampaignFiltersV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListGovCertificationCampaignFiltersV1401Response', 'ListGovCertificationCampaignFiltersV1401Response'] 
slug: /tools/sdk/powershell/govcertification/models/list-gov-certification-campaign-filters-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListGovCertificationCampaignFiltersV1401Response', 'ListGovCertificationCampaignFiltersV1401Response']
---


# ListGovCertificationCampaignFiltersV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListGovCertificationCampaignFiltersV1401Response = Initialize-ListGovCertificationCampaignFiltersV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListGovCertificationCampaignFiltersV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

