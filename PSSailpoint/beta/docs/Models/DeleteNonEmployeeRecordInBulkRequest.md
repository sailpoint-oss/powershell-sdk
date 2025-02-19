---
id: beta-delete-non-employee-record-in-bulk-request
title: DeleteNonEmployeeRecordInBulkRequest
pagination_label: DeleteNonEmployeeRecordInBulkRequest
sidebar_label: DeleteNonEmployeeRecordInBulkRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DeleteNonEmployeeRecordInBulkRequest', 'BetaDeleteNonEmployeeRecordInBulkRequest'] 
slug: /tools/sdk/powershell/beta/models/delete-non-employee-record-in-bulk-request
tags: ['SDK', 'Software Development Kit', 'DeleteNonEmployeeRecordInBulkRequest', 'BetaDeleteNonEmployeeRecordInBulkRequest']
---


# DeleteNonEmployeeRecordInBulkRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **[]String** | List of non-employee ids. | [required]

## Examples

- Prepare the resource
```powershell
$DeleteNonEmployeeRecordInBulkRequest = Initialize-PSSailpoint.BetaDeleteNonEmployeeRecordInBulkRequest  -Ids null
$DeleteNonEmployeeRecordInBulkRequest = @"{  "Ids": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToDeleteNonEmployeeRecordInBulkRequest -Json $DeleteNonEmployeeRecordInBulkRequest
```


[[Back to top]](#) 

