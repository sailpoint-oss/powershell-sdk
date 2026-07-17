---
id: bulk-update-amm-key-value-inner
title: BulkUpdateAMMKeyValueInner
pagination_label: BulkUpdateAMMKeyValueInner
sidebar_label: BulkUpdateAMMKeyValueInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BulkUpdateAMMKeyValueInner', 'BulkUpdateAMMKeyValueInner'] 
slug: /tools/sdk/powershell/accessmodelmetadata/models/bulk-update-amm-key-value-inner
tags: ['SDK', 'Software Development Kit', 'BulkUpdateAMMKeyValueInner', 'BulkUpdateAMMKeyValueInner']
---


# BulkUpdateAMMKeyValueInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | the key of metadata attribute | [required]
**Values** | **[]String** | the values of attribute to be updated | [required]

## Examples

- Prepare the resource
```powershell
$BulkUpdateAMMKeyValueInner = Initialize-BulkUpdateAMMKeyValueInner  -Attribute iscFederalClassifications `
 -Values ["secret"]
```

- Convert the resource to JSON
```powershell
$BulkUpdateAMMKeyValueInner | ConvertTo-JSON
```


[[Back to top]](#) 

