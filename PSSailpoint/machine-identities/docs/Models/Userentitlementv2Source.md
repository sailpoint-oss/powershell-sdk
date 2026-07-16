---
id: userentitlementv2-source
title: Userentitlementv2Source
pagination_label: Userentitlementv2Source
sidebar_label: Userentitlementv2Source
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Userentitlementv2Source', 'Userentitlementv2Source'] 
slug: /tools/sdk/powershell/machineidentities/models/userentitlementv2-source
tags: ['SDK', 'Software Development Kit', 'Userentitlementv2Source', 'Userentitlementv2Source']
---


# Userentitlementv2Source

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **Dtotype** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$Userentitlementv2Source = Initialize-Userentitlementv2Source  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$Userentitlementv2Source | ConvertTo-JSON
```


[[Back to top]](#) 

