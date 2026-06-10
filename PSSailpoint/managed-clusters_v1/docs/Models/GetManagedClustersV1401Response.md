---
id: get-managed-clusters-v1401-response
title: GetManagedClustersV1401Response
pagination_label: GetManagedClustersV1401Response
sidebar_label: GetManagedClustersV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetManagedClustersV1401Response', 'GetManagedClustersV1401Response'] 
slug: /tools/sdk/powershell/managedclustersv1/models/get-managed-clusters-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetManagedClustersV1401Response', 'GetManagedClustersV1401Response']
---


# GetManagedClustersV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetManagedClustersV1401Response = Initialize-GetManagedClustersV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetManagedClustersV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

