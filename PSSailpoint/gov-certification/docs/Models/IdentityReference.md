---
id: identity-reference
title: IdentityReference
pagination_label: IdentityReference
sidebar_label: IdentityReference
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityReference', 'IdentityReference'] 
slug: /tools/sdk/powershell/govcertification/models/identity-reference
tags: ['SDK', 'Software Development Kit', 'IdentityReference', 'IdentityReference']
---


# IdentityReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | The type can only be IDENTITY. This is read-only | [optional] 
**Id** | **String** | Identity id. | [optional] 
**Name** | **String** | Human-readable display name of identity. This is read-only | [optional] 
**Email** | **String** | Email address of identity. This is read-only | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityReference = Initialize-IdentityReference  -Type IDENTITY `
 -Id 5168015d32f890ca15812c9180835d2e `
 -Name Alison Ferguso `
 -Email alison.ferguso@identitysoon.com
```

- Convert the resource to JSON
```powershell
$IdentityReference | ConvertTo-JSON
```


[[Back to top]](#) 

