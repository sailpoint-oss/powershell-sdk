---
id: v2026-ref
title: Ref
pagination_label: Ref
sidebar_label: Ref
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Ref', 'V2026Ref'] 
slug: /tools/sdk/powershell/v2026/models/ref
tags: ['SDK', 'Software Development Kit', 'Ref', 'V2026Ref']
---


# Ref

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**DtoType**](dto-type) |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$Ref = Initialize-V2026Ref  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313
```

- Convert the resource to JSON
```powershell
$Ref | ConvertTo-JSON
```


[[Back to top]](#) 

