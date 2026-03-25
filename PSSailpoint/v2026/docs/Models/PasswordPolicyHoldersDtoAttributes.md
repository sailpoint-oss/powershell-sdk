---
id: v2026-password-policy-holders-dto-attributes
title: PasswordPolicyHoldersDtoAttributes
pagination_label: PasswordPolicyHoldersDtoAttributes
sidebar_label: PasswordPolicyHoldersDtoAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PasswordPolicyHoldersDtoAttributes', 'V2026PasswordPolicyHoldersDtoAttributes'] 
slug: /tools/sdk/powershell/v2026/models/password-policy-holders-dto-attributes
tags: ['SDK', 'Software Development Kit', 'PasswordPolicyHoldersDtoAttributes', 'V2026PasswordPolicyHoldersDtoAttributes']
---


# PasswordPolicyHoldersDtoAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityAttr** | [**[]PasswordPolicyHoldersDtoAttributesIdentityAttrInner**](password-policy-holders-dto-attributes-identity-attr-inner) | Attributes of PasswordPolicyHoldersDto | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyHoldersDtoAttributes = Initialize-V2026PasswordPolicyHoldersDtoAttributes  -IdentityAttr null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyHoldersDtoAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

