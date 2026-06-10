---
id: get-reassignment-config-types-v1401-response
title: GetReassignmentConfigTypesV1401Response
pagination_label: GetReassignmentConfigTypesV1401Response
sidebar_label: GetReassignmentConfigTypesV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetReassignmentConfigTypesV1401Response', 'GetReassignmentConfigTypesV1401Response'] 
slug: /tools/sdk/powershell/workreassignmentv1/models/get-reassignment-config-types-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetReassignmentConfigTypesV1401Response', 'GetReassignmentConfigTypesV1401Response']
---


# GetReassignmentConfigTypesV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetReassignmentConfigTypesV1401Response = Initialize-GetReassignmentConfigTypesV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetReassignmentConfigTypesV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

