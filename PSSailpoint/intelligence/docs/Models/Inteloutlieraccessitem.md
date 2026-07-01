---
id: inteloutlieraccessitem
title: Inteloutlieraccessitem
pagination_label: Inteloutlieraccessitem
sidebar_label: Inteloutlieraccessitem
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Inteloutlieraccessitem', 'Inteloutlieraccessitem'] 
slug: /tools/sdk/powershell/intelligence/models/inteloutlieraccessitem
tags: ['SDK', 'Software Development Kit', 'Inteloutlieraccessitem', 'Inteloutlieraccessitem']
---


# Inteloutlieraccessitem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Stable identifier of the outlier access-item row. | [required]
**DisplayName** | **String** | Display label of the risky access item. | [required]
**Description** | **String** | Optional descriptive text for the risky access item. | [optional] 
**AccessType** | **String** | Access item type. | [required]
**SourceName** | **String** | Source name where the risky access item exists. | [required]
**ExtremelyRare** | **Boolean** | Indicates whether analytics marked this item as extremely rare. | [required]

## Examples

- Prepare the resource
```powershell
$Inteloutlieraccessitem = Initialize-Inteloutlieraccessitem  -Id outlier-access-001 `
 -DisplayName Example_Admin_Access `
 -Description null `
 -AccessType ENTITLEMENT `
 -SourceName Example SaaS Source `
 -ExtremelyRare false
```

- Convert the resource to JSON
```powershell
$Inteloutlieraccessitem | ConvertTo-JSON
```


[[Back to top]](#) 

