---
id: account-request-async-result
title: AccountRequestAsyncResult
pagination_label: AccountRequestAsyncResult
sidebar_label: AccountRequestAsyncResult
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountRequestAsyncResult', 'AccountRequestAsyncResult'] 
slug: /tools/sdk/powershell/accountdeletionrequests/models/account-request-async-result
tags: ['SDK', 'Software Development Kit', 'AccountRequestAsyncResult', 'AccountRequestAsyncResult']
---


# AccountRequestAsyncResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountRequestId** | **String** | Id of the account request | [required]

## Examples

- Prepare the resource
```powershell
$AccountRequestAsyncResult = Initialize-AccountRequestAsyncResult  -AccountRequestId 2d81808474683da6017468693c260196
```

- Convert the resource to JSON
```powershell
$AccountRequestAsyncResult | ConvertTo-JSON
```


[[Back to top]](#) 

