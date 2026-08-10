---
id: appliedcontrolcreate
title: Appliedcontrolcreate
pagination_label: Appliedcontrolcreate
sidebar_label: Appliedcontrolcreate
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Appliedcontrolcreate', 'Appliedcontrolcreate'] 
slug: /tools/sdk/powershell/sodviolations/models/appliedcontrolcreate
tags: ['SDK', 'Software Development Kit', 'Appliedcontrolcreate', 'Appliedcontrolcreate']
---


# Appliedcontrolcreate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Control** | **String** | The unique identifier of the compensating control to apply. | [required]
**Comments** | **String** | Optional comments to capture when applying the control. | [optional] 

## Examples

- Prepare the resource
```powershell
$Appliedcontrolcreate = Initialize-Appliedcontrolcreate  -Control 3e07886555ed43cfb83c85c58d2016e6 `
 -Comments Some comments about the applied control
```

- Convert the resource to JSON
```powershell
$Appliedcontrolcreate | ConvertTo-JSON
```


[[Back to top]](#) 

