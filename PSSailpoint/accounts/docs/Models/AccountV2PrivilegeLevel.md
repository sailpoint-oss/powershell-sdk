---
id: account-v2-privilege-level
title: AccountV2PrivilegeLevel
pagination_label: AccountV2PrivilegeLevel
sidebar_label: AccountV2PrivilegeLevel
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountV2PrivilegeLevel', 'AccountV2PrivilegeLevel'] 
slug: /tools/sdk/powershell/accounts/models/account-v2-privilege-level
tags: ['SDK', 'Software Development Kit', 'AccountV2PrivilegeLevel', 'AccountV2PrivilegeLevel']
---


# AccountV2PrivilegeLevel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Effective** | **String** | The effective privilege level of the account. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountV2PrivilegeLevel = Initialize-AccountV2PrivilegeLevel  -Effective High
```

- Convert the resource to JSON
```powershell
$AccountV2PrivilegeLevel | ConvertTo-JSON
```


[[Back to top]](#) 

