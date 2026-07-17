---
id: password-policy-holders-dto-inner
title: PasswordPolicyHoldersDtoInner
pagination_label: PasswordPolicyHoldersDtoInner
sidebar_label: PasswordPolicyHoldersDtoInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PasswordPolicyHoldersDtoInner', 'PasswordPolicyHoldersDtoInner'] 
slug: /tools/sdk/powershell/sources/models/password-policy-holders-dto-inner
tags: ['SDK', 'Software Development Kit', 'PasswordPolicyHoldersDtoInner', 'PasswordPolicyHoldersDtoInner']
---


# PasswordPolicyHoldersDtoInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PolicyId** | **String** | The password policy Id. | [optional] 
**PolicyName** | **String** | The name of the password policy. | [optional] 
**Selectors** | **PasswordPolicyHoldersDtoAttributes** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyHoldersDtoInner = Initialize-PasswordPolicyHoldersDtoInner  -PolicyId 2c91808e7d976f3b017d9f5ceae440c8 `
 -PolicyName PasswordPolicy Example `
 -Selectors null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyHoldersDtoInner | ConvertTo-JSON
```


[[Back to top]](#) 

