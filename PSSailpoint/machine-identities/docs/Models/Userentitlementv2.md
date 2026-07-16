---
id: userentitlementv2
title: Userentitlementv2
pagination_label: Userentitlementv2
sidebar_label: Userentitlementv2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Userentitlementv2', 'Userentitlementv2'] 
slug: /tools/sdk/powershell/machineidentities/models/userentitlementv2
tags: ['SDK', 'Software Development Kit', 'Userentitlementv2', 'Userentitlementv2']
---


# Userentitlementv2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SourceId** | **String** | The source ID of the entitlement. | [optional] 
**EntitlementId** | **String** | The ID of the entitlement. | [optional] 
**DisplayName** | **String** | The display name of the entitlement. | [optional] 
**Source** | [**Userentitlementv2Source**](userentitlementv2-source) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Userentitlementv2 = Initialize-Userentitlementv2  -SourceId 5898b7c1-620c-49c6-cccc-cbf81eb4bddd `
 -EntitlementId 6d28b7c1-620c-49c6-b6d5-cbf81eb4b5fa `
 -DisplayName Entitlement Name `
 -Source null
```

- Convert the resource to JSON
```powershell
$Userentitlementv2 | ConvertTo-JSON
```


[[Back to top]](#) 

