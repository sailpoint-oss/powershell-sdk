---
id: v2025-data-owner-model
title: DataOwnerModel
pagination_label: DataOwnerModel
sidebar_label: DataOwnerModel
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DataOwnerModel', 'V2025DataOwnerModel'] 
slug: /tools/sdk/powershell/v2025/models/data-owner-model
tags: ['SDK', 'Software Development Kit', 'DataOwnerModel', 'V2025DataOwnerModel']
---


# DataOwnerModel

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityId** | **String** | The unique identifier (UUID) of the identity assigned as the owner of the resource. | [optional] 
**ResourceId** | **Int64** | The unique identifier of the resource owned by the identity. | [optional] 
**FullPath** | **String** | The full path to the resource within the system or application. | [optional] 

## Examples

- Prepare the resource
```powershell
$DataOwnerModel = Initialize-V2025DataOwnerModel  -IdentityId c1a2b3d4-e5f6-7890-abcd-1234567890ab `
 -ResourceId 1001 `
 -FullPath /departments/finance/shared
```

- Convert the resource to JSON
```powershell
$DataOwnerModel | ConvertTo-JSON
```


[[Back to top]](#) 

