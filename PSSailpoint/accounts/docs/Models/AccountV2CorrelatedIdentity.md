---
id: account-v2-correlated-identity
title: AccountV2CorrelatedIdentity
pagination_label: AccountV2CorrelatedIdentity
sidebar_label: AccountV2CorrelatedIdentity
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountV2CorrelatedIdentity', 'AccountV2CorrelatedIdentity'] 
slug: /tools/sdk/powershell/accounts/models/account-v2-correlated-identity
tags: ['SDK', 'Software Development Kit', 'AccountV2CorrelatedIdentity', 'AccountV2CorrelatedIdentity']
---


# AccountV2CorrelatedIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the identity. | [optional] 
**Type** |  **Enum** [  "IDENTITY" ] | The DTO type of the identity. | [optional] 
**Name** | **String** | The display name of the identity. | [optional] 
**State** | **String** | The identity state. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountV2CorrelatedIdentity = Initialize-AccountV2CorrelatedIdentity  -Id 2c918084660f45d6016617daa9210584 `
 -Type IDENTITY `
 -Name John Doe `
 -State ACTIVE
```

- Convert the resource to JSON
```powershell
$AccountV2CorrelatedIdentity | ConvertTo-JSON
```


[[Back to top]](#) 

