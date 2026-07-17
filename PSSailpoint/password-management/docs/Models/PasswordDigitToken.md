---
id: password-digit-token
title: PasswordDigitToken
pagination_label: PasswordDigitToken
sidebar_label: PasswordDigitToken
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PasswordDigitToken', 'PasswordDigitToken'] 
slug: /tools/sdk/powershell/passwordmanagement/models/password-digit-token
tags: ['SDK', 'Software Development Kit', 'PasswordDigitToken', 'PasswordDigitToken']
---


# PasswordDigitToken

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DigitToken** | **String** | The digit token for password management | [optional] 
**RequestId** | **String** | The reference ID of the digit token generation request | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordDigitToken = Initialize-PasswordDigitToken  -DigitToken 9087713 `
 -RequestId e1267ecd-fcd9-4c73-9c55-12555efad136
```

- Convert the resource to JSON
```powershell
$PasswordDigitToken | ConvertTo-JSON
```


[[Back to top]](#) 

