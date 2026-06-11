---
id: get-managed-cluster-types-v1401-response
title: GetManagedClusterTypesV1401Response
pagination_label: GetManagedClusterTypesV1401Response
sidebar_label: GetManagedClusterTypesV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetManagedClusterTypesV1401Response', 'GetManagedClusterTypesV1401Response'] 
slug: /tools/sdk/powershell/managedclustertypesv1/models/get-managed-cluster-types-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetManagedClusterTypesV1401Response', 'GetManagedClusterTypesV1401Response']
---


# GetManagedClusterTypesV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetManagedClusterTypesV1401Response = Initialize-GetManagedClusterTypesV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetManagedClusterTypesV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

