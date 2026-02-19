---
id: v2026-account-action-request-dto-correlated-identity
title: AccountActionRequestDtoCorrelatedIdentity
pagination_label: AccountActionRequestDtoCorrelatedIdentity
sidebar_label: AccountActionRequestDtoCorrelatedIdentity
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountActionRequestDtoCorrelatedIdentity', 'V2026AccountActionRequestDtoCorrelatedIdentity'] 
slug: /tools/sdk/powershell/v2026/models/account-action-request-dto-correlated-identity
tags: ['SDK', 'Software Development Kit', 'AccountActionRequestDtoCorrelatedIdentity', 'V2026AccountActionRequestDtoCorrelatedIdentity']
---


# AccountActionRequestDtoCorrelatedIdentity

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
$AccountActionRequestDtoCorrelatedIdentity = Initialize-V2026AccountActionRequestDtoCorrelatedIdentity  -Id 117e169acf21f4ae28e8a06198ce7f69 `
 -Name Alfred `
 -Email alfred@testmail.identitysoon.com `
 -Status UNREGISTERED
```

- Convert the resource to JSON
```powershell
$AccountActionRequestDtoCorrelatedIdentity | ConvertTo-JSON
```


[[Back to top]](#) 

