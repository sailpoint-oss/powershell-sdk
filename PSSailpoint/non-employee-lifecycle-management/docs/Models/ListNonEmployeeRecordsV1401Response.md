---
id: list-non-employee-records-v1401-response
title: ListNonEmployeeRecordsV1401Response
pagination_label: ListNonEmployeeRecordsV1401Response
sidebar_label: ListNonEmployeeRecordsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListNonEmployeeRecordsV1401Response', 'ListNonEmployeeRecordsV1401Response'] 
slug: /tools/sdk/powershell/nonemployeelifecyclemanagement/models/list-non-employee-records-v1401-response
tags: ['SDK', 'Software Development Kit', 'ListNonEmployeeRecordsV1401Response', 'ListNonEmployeeRecordsV1401Response']
---


# ListNonEmployeeRecordsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListNonEmployeeRecordsV1401Response = Initialize-ListNonEmployeeRecordsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListNonEmployeeRecordsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

