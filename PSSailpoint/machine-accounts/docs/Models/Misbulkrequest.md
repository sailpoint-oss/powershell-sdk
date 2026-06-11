---
id: misbulkrequest
title: Misbulkrequest
pagination_label: Misbulkrequest
sidebar_label: Misbulkrequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Misbulkrequest', 'Misbulkrequest'] 
slug: /tools/sdk/powershell/machineaccountsv1/models/misbulkrequest
tags: ['SDK', 'Software Development Kit', 'Misbulkrequest', 'Misbulkrequest']
---


# Misbulkrequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **[]String** | Machine identity or machine account IDs to include in the bulk operation. | [required]

## Examples

- Prepare the resource
```powershell
$Misbulkrequest = Initialize-Misbulkrequest  -Ids ["ef38f94347e94562b5bb8424a56397d8","2c91808a7813090a017814121919ecca"]
```

- Convert the resource to JSON
```powershell
$Misbulkrequest | ConvertTo-JSON
```


[[Back to top]](#) 

