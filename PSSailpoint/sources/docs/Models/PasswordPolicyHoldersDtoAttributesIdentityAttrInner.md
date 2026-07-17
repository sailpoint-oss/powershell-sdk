---
id: password-policy-holders-dto-attributes-identity-attr-inner
title: PasswordPolicyHoldersDtoAttributesIdentityAttrInner
pagination_label: PasswordPolicyHoldersDtoAttributesIdentityAttrInner
sidebar_label: PasswordPolicyHoldersDtoAttributesIdentityAttrInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PasswordPolicyHoldersDtoAttributesIdentityAttrInner', 'PasswordPolicyHoldersDtoAttributesIdentityAttrInner'] 
slug: /tools/sdk/powershell/sources/models/password-policy-holders-dto-attributes-identity-attr-inner
tags: ['SDK', 'Software Development Kit', 'PasswordPolicyHoldersDtoAttributesIdentityAttrInner', 'PasswordPolicyHoldersDtoAttributesIdentityAttrInner']
---


# PasswordPolicyHoldersDtoAttributesIdentityAttrInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Attribute's name | [optional] 
**Value** | **String** | Attribute's value | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordPolicyHoldersDtoAttributesIdentityAttrInner = Initialize-PasswordPolicyHoldersDtoAttributesIdentityAttrInner  -Name Country `
 -Value Canada
```

- Convert the resource to JSON
```powershell
$PasswordPolicyHoldersDtoAttributesIdentityAttrInner | ConvertTo-JSON
```


[[Back to top]](#) 

