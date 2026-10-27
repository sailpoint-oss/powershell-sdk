---
id: bulk-classify-machine-account-result
title: BulkClassifyMachineAccountResult
pagination_label: BulkClassifyMachineAccountResult
sidebar_label: BulkClassifyMachineAccountResult
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BulkClassifyMachineAccountResult', 'BulkClassifyMachineAccountResult'] 
slug: /tools/sdk/powershell/machineaccountclassify/models/bulk-classify-machine-account-result
tags: ['SDK', 'Software Development Kit', 'BulkClassifyMachineAccountResult', 'BulkClassifyMachineAccountResult']
---


# BulkClassifyMachineAccountResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Account ID from the request. | [optional] 
**Status** | **Int32** | HTTP status code for this account. `200` means the account was classified, `404` means the account was not found, and other codes describe why classification failed. | [optional] 
**IsMachine** | **Boolean** | Indicates if the account is classified as machine. `false` when classification did not succeed. | [optional] [default to $false]
**Message** | **String** | Result message for this account. | [optional] 

## Examples

- Prepare the resource
```powershell
$BulkClassifyMachineAccountResult = Initialize-BulkClassifyMachineAccountResult  -Id ef38f94347e94562b5bb8424a56397d8 `
 -Status 200 `
 -IsMachine true `
 -Message Account classified successfully
```

- Convert the resource to JSON
```powershell
$BulkClassifyMachineAccountResult | ConvertTo-JSON
```


[[Back to top]](#) 

