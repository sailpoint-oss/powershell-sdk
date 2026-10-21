---
id: target-reference
title: TargetReference
pagination_label: TargetReference
sidebar_label: TargetReference
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'TargetReference', 'TargetReference'] 
slug: /tools/sdk/powershell/govcertification/models/target-reference
tags: ['SDK', 'Software Development Kit', 'TargetReference', 'TargetReference']
---


# TargetReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **CertificationItemType** |  | [optional] 
**Id** | **String** | Identifier of the target item. | [optional] 
**Name** | **String** | Human-readable display name of identity. This is read-only | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetReference = Initialize-TargetReference  -Type null `
 -Id 5168015d32f890ca15812c9180835d2e `
 -Name Alison Ferguso
```

- Convert the resource to JSON
```powershell
$TargetReference | ConvertTo-JSON
```


[[Back to top]](#) 

