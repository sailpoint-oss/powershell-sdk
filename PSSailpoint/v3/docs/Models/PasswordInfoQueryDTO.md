---
id: password-info-query-dto
title: PasswordInfoQueryDTO
pagination_label: PasswordInfoQueryDTO
sidebar_label: PasswordInfoQueryDTO
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PasswordInfoQueryDTO', 'PasswordInfoQueryDTO'] 
slug: /tools/sdk/powershell/v3/models/password-info-query-dto
tags: ['SDK', 'Software Development Kit', 'PasswordInfoQueryDTO', 'PasswordInfoQueryDTO']
---


# PasswordInfoQueryDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserName** | **String** | The login name of the user | [optional] 
**SourceName** | **String** | The display name of the source | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordInfoQueryDTO = Initialize-PasswordInfoQueryDTO  -UserName Abby.Smith `
 -SourceName My-AD
```

- Convert the resource to JSON
```powershell
$PasswordInfoQueryDTO | ConvertTo-JSON
```


[[Back to top]](#) 

