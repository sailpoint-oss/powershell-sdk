---
id: password-policy-holders-dto-attributes
title: PasswordPolicyHoldersDtoAttributes
pagination_label: PasswordPolicyHoldersDtoAttributes
sidebar_label: PasswordPolicyHoldersDtoAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PasswordPolicyHoldersDtoAttributes', 'PasswordPolicyHoldersDtoAttributes'] 
slug: /tools/sdk/powershell/sources/models/password-policy-holders-dto-attributes
tags: ['SDK', 'Software Development Kit', 'PasswordPolicyHoldersDtoAttributes', 'PasswordPolicyHoldersDtoAttributes']
---


# PasswordPolicyHoldersDtoAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityAttr** | [**[]PasswordPolicyHoldersDtoAttributesIdentityAttrInner**](password-policy-holders-dto-attributes-identity-attr-inner) | Attributes of PasswordPolicyHoldersDto | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyHoldersDtoAttributes = Initialize-PasswordPolicyHoldersDtoAttributes  -IdentityAttr null
```

- Convert the resource to JSON
```powershell
$PasswordPolicyHoldersDtoAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

