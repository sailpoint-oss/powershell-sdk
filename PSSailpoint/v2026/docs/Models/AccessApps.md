---
id: v2026-access-apps
title: AccessApps
pagination_label: AccessApps
sidebar_label: AccessApps
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessApps', 'V2026AccessApps'] 
slug: /tools/sdk/powershell/v2026/models/access-apps
tags: ['SDK', 'Software Development Kit', 'AccessApps', 'V2026AccessApps']
---


# AccessApps

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the referenced object. | [optional] 
**Name** | **String** | Name of application | [optional] 
**Description** | **String** | Description of application. | [optional] 
**Owner** | [**AccessAppsOwner**](access-apps-owner) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessApps = Initialize-V2026AccessApps  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name Travel and Expense `
 -Description Travel and Expense Application `
 -Owner null
```

- Convert the resource to JSON
```powershell
$AccessApps | ConvertTo-JSON
```


[[Back to top]](#) 

