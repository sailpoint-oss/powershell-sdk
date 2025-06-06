---
id: reference1
title: Reference1
pagination_label: Reference1
sidebar_label: Reference1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Reference1', 'Reference1'] 
slug: /tools/sdk/powershell/v3/models/reference1
tags: ['SDK', 'Software Development Kit', 'Reference1', 'Reference1']
---


# Reference1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the referenced object. | [optional] 
**Name** | **String** | The human readable name of the referenced object. | [optional] 

## Examples

- Prepare the resource
```powershell
$Reference1 = Initialize-Reference1  -Id 2c91808568c529c60168cca6f90c1313 `
 -Name John Doe
```

- Convert the resource to JSON
```powershell
$Reference1 | ConvertTo-JSON
```


[[Back to top]](#) 

