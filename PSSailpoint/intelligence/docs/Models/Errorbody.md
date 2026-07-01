---
id: errorbody
title: Errorbody
pagination_label: Errorbody
sidebar_label: Errorbody
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Errorbody', 'Errorbody'] 
slug: /tools/sdk/powershell/intelligence/models/errorbody
tags: ['SDK', 'Software Development Kit', 'Errorbody', 'Errorbody']
---


# Errorbody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DetailCode** | **String** | Machine-readable error code returned by the Intelligence service. | [optional] 
**Message** | **String** | Human-readable explanation of the error suitable for client logging. | [optional] 

## Examples

- Prepare the resource
```powershell
$Errorbody = Initialize-Errorbody  -DetailCode IDC_BAD_REQUEST `
 -Message The filters query parameter is required and cannot be empty.
```

- Convert the resource to JSON
```powershell
$Errorbody | ConvertTo-JSON
```


[[Back to top]](#) 

