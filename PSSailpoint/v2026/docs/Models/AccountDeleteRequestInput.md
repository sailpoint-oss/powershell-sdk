---
id: v2026-account-delete-request-input
title: AccountDeleteRequestInput
pagination_label: AccountDeleteRequestInput
sidebar_label: AccountDeleteRequestInput
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountDeleteRequestInput', 'V2026AccountDeleteRequestInput'] 
slug: /tools/sdk/powershell/v2026/models/account-delete-request-input
tags: ['SDK', 'Software Development Kit', 'AccountDeleteRequestInput', 'V2026AccountDeleteRequestInput']
---


# AccountDeleteRequestInput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comments** | **String** | Reason for deleting the account. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountDeleteRequestInput = Initialize-V2026AccountDeleteRequestInput  -Comments Requesting account deletion request
```

- Convert the resource to JSON
```powershell
$AccountDeleteRequestInput | ConvertTo-JSON
```


[[Back to top]](#) 

