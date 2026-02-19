---
id: v2026-account-delete-async-result
title: AccountDeleteAsyncResult
pagination_label: AccountDeleteAsyncResult
sidebar_label: AccountDeleteAsyncResult
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountDeleteAsyncResult', 'V2026AccountDeleteAsyncResult'] 
slug: /tools/sdk/powershell/v2026/models/account-delete-async-result
tags: ['SDK', 'Software Development Kit', 'AccountDeleteAsyncResult', 'V2026AccountDeleteAsyncResult']
---


# AccountDeleteAsyncResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountRequestId** | **String** | Id of the deletion request | [required]

## Examples

- Prepare the resource
```powershell
$AccountDeleteAsyncResult = Initialize-V2026AccountDeleteAsyncResult  -AccountRequestId 2d81808474683da6017468693c260196
```

- Convert the resource to JSON
```powershell
$AccountDeleteAsyncResult | ConvertTo-JSON
```


[[Back to top]](#) 

