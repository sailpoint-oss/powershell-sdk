---
id: v2026-intel-outlier-access-item
title: IntelOutlierAccessItem
pagination_label: IntelOutlierAccessItem
sidebar_label: IntelOutlierAccessItem
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelOutlierAccessItem', 'V2026IntelOutlierAccessItem'] 
slug: /tools/sdk/powershell/v2026/models/intel-outlier-access-item
tags: ['SDK', 'Software Development Kit', 'IntelOutlierAccessItem', 'V2026IntelOutlierAccessItem']
---


# IntelOutlierAccessItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Stable identifier of the outlier access-item row. | [required]
**DisplayName** | **String** | Display label of the risky access item. | [required]
**Description** | **String** | Optional descriptive text for the risky access item. | [optional] 
**AccessType** | **String** | Access item type (for example ENTITLEMENT, ROLE, ACCESS_PROFILE, ACCOUNT, or APP). | [required]
**SourceName** | **String** | Source name where the risky access item exists. | [required]
**ExtremelyRare** | **Boolean** | Indicates whether analytics marked this item as extremely rare. | [required]

## Examples

- Prepare the resource
```powershell
$IntelOutlierAccessItem = Initialize-V2026IntelOutlierAccessItem  -Id outlier-access-001 `
 -DisplayName Example_Admin_Access `
 -Description null `
 -AccessType ENTITLEMENT `
 -SourceName Example SaaS Source `
 -ExtremelyRare false
```

- Convert the resource to JSON
```powershell
$IntelOutlierAccessItem | ConvertTo-JSON
```


[[Back to top]](#) 

