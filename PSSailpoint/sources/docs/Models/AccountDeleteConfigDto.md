---
id: account-delete-config-dto
title: AccountDeleteConfigDto
pagination_label: AccountDeleteConfigDto
sidebar_label: AccountDeleteConfigDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountDeleteConfigDto', 'AccountDeleteConfigDto'] 
slug: /tools/sdk/powershell/sources/models/account-delete-config-dto
tags: ['SDK', 'Software Development Kit', 'AccountDeleteConfigDto', 'AccountDeleteConfigDto']
---


# AccountDeleteConfigDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalRequired** | **Boolean** | Specifies if an account deletion request requires approval. | [optional] [default to $false]
**ApprovalConfig** | [**ApprovalConfig**](approval-config) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountDeleteConfigDto = Initialize-AccountDeleteConfigDto  -ApprovalRequired true `
 -ApprovalConfig null
```

- Convert the resource to JSON
```powershell
$AccountDeleteConfigDto | ConvertTo-JSON
```


[[Back to top]](#) 

