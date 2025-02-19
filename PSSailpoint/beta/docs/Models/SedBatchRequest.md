---
id: beta-sed-batch-request
title: SedBatchRequest
pagination_label: SedBatchRequest
sidebar_label: SedBatchRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SedBatchRequest', 'BetaSedBatchRequest'] 
slug: /tools/sdk/powershell/beta/models/sed-batch-request
tags: ['SDK', 'Software Development Kit', 'SedBatchRequest', 'BetaSedBatchRequest']
---


# SedBatchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Entitlements** | **[]String** | list of entitlement ids | [optional] 
**Seds** | **[]String** | list of sed ids | [optional] 

## Examples

- Prepare the resource
```powershell
$SedBatchRequest = Initialize-PSSailpoint.BetaSedBatchRequest  -Entitlements null `
 -Seds null
$SedBatchRequest = @"{  "Entitlements": null, "Seds": null }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToSedBatchRequest -Json $SedBatchRequest
```


[[Back to top]](#) 

