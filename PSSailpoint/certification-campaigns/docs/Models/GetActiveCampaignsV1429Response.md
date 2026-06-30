---
id: get-active-campaigns-v1429-response
title: GetActiveCampaignsV1429Response
pagination_label: GetActiveCampaignsV1429Response
sidebar_label: GetActiveCampaignsV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetActiveCampaignsV1429Response', 'GetActiveCampaignsV1429Response'] 
slug: /tools/sdk/powershell/certificationcampaigns/models/get-active-campaigns-v1429-response
tags: ['SDK', 'Software Development Kit', 'GetActiveCampaignsV1429Response', 'GetActiveCampaignsV1429Response']
---


# GetActiveCampaignsV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetActiveCampaignsV1429Response = Initialize-GetActiveCampaignsV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$GetActiveCampaignsV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

