---
id: intelaccesssourcewire
title: Intelaccesssourcewire
pagination_label: Intelaccesssourcewire
sidebar_label: Intelaccesssourcewire
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelaccesssourcewire', 'Intelaccesssourcewire'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/intelaccesssourcewire
tags: ['SDK', 'Software Development Kit', 'Intelaccesssourcewire', 'Intelaccesssourcewire']
---


# Intelaccesssourcewire

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Source identifier referenced by the account wire object. | [optional] 
**Name** | **String** | Human-readable source name shown in administrative consoles. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelaccesssourcewire = Initialize-Intelaccesssourcewire  -Id 2c9180835d2e5168015d32f890301e89 `
 -Name Active Directory
```

- Convert the resource to JSON
```powershell
$Intelaccesssourcewire | ConvertTo-JSON
```


[[Back to top]](#) 

