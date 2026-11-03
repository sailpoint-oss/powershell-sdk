---
id: account-v2-source
title: AccountV2Source
pagination_label: AccountV2Source
sidebar_label: AccountV2Source
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountV2Source', 'AccountV2Source'] 
slug: /tools/sdk/powershell/accounts/models/account-v2-source
tags: ['SDK', 'Software Development Kit', 'AccountV2Source', 'AccountV2Source']
---


# AccountV2Source

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the source. | [optional] 
**Type** |  **Enum** [  "SOURCE" ] | The DTO type of the source. | [optional] 
**Name** | **String** | The display name of the source. | [optional] 
**Authoritative** | **Boolean** | Indicates if this account is from an authoritative source. | [optional] [default to $false]
**ConnectionType** | **String** | The connection type of the source this account is from. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountV2Source = Initialize-AccountV2Source  -Id 2c9180835d2e5168015d32f890ca1581 `
 -Type SOURCE `
 -Name Employees `
 -Authoritative false `
 -ConnectionType direct
```

- Convert the resource to JSON
```powershell
$AccountV2Source | ConvertTo-JSON
```


[[Back to top]](#) 

