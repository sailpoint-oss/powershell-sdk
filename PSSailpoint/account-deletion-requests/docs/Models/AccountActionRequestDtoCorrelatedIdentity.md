---
id: account-action-request-dto-correlated-identity
title: AccountActionRequestDtoCorrelatedIdentity
pagination_label: AccountActionRequestDtoCorrelatedIdentity
sidebar_label: AccountActionRequestDtoCorrelatedIdentity
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountActionRequestDtoCorrelatedIdentity', 'AccountActionRequestDtoCorrelatedIdentity'] 
slug: /tools/sdk/powershell/accountdeletionrequests/models/account-action-request-dto-correlated-identity
tags: ['SDK', 'Software Development Kit', 'AccountActionRequestDtoCorrelatedIdentity', 'AccountActionRequestDtoCorrelatedIdentity']
---


# AccountActionRequestDtoCorrelatedIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | Identity id | [optional] 
**Name** | **String** | Human-readable display name of identity. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountActionRequestDtoCorrelatedIdentity = Initialize-AccountActionRequestDtoCorrelatedIdentity  -Type null `
 -Id 2c9180a46faadee4016fb4e018c20639 `
 -Name Thomas Edison
```

- Convert the resource to JSON
```powershell
$AccountActionRequestDtoCorrelatedIdentity | ConvertTo-JSON
```


[[Back to top]](#) 

