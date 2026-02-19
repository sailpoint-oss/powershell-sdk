---
id: v2026-identity-reference
title: IdentityReference
pagination_label: IdentityReference
sidebar_label: IdentityReference
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityReference', 'V2026IdentityReference'] 
slug: /tools/sdk/powershell/v2026/models/identity-reference
tags: ['SDK', 'Software Development Kit', 'IdentityReference', 'V2026IdentityReference']
---


# IdentityReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of identity | [optional] 
**Name** | **String** | Name of Identity | [optional] 
**Email** | **String** | mail id of identity | [optional] 
**Status** | **String** | status of identity UNREGISTERED/REGISTERED | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityReference = Initialize-V2026IdentityReference  -Id 117e169acf21f4ae28e8a06198ce7f69 `
 -Name Alfred `
 -Email alfred@testmail.identitysoon.com `
 -Status UNREGISTERED
```

- Convert the resource to JSON
```powershell
$IdentityReference | ConvertTo-JSON
```


[[Back to top]](#) 

