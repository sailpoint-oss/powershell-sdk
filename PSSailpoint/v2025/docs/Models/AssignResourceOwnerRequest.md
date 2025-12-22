---
id: v2025-assign-resource-owner-request
title: AssignResourceOwnerRequest
pagination_label: AssignResourceOwnerRequest
sidebar_label: AssignResourceOwnerRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AssignResourceOwnerRequest', 'V2025AssignResourceOwnerRequest'] 
slug: /tools/sdk/powershell/v2025/models/assign-resource-owner-request
tags: ['SDK', 'Software Development Kit', 'AssignResourceOwnerRequest', 'V2025AssignResourceOwnerRequest']
---


# AssignResourceOwnerRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AppId** | **Int64** | The unique identifier of the application containing the resource. | [optional] 
**FullPath** | **String** | The full path to the resource within the application (e.g., file path or object path). | [optional] 
**IdentityId** | **String** | The unique identifier (UUID) of the identity to be assigned as the resource owner. | [optional] 

## Examples

- Prepare the resource
```powershell
$AssignResourceOwnerRequest = Initialize-V2025AssignResourceOwnerRequest  -AppId 12345 `
 -FullPath /shared/hr/documents/employee-records.pdf `
 -IdentityId d290f1ee-6c54-4b01-90e6-d701748f0851
```

- Convert the resource to JSON
```powershell
$AssignResourceOwnerRequest | ConvertTo-JSON
```


[[Back to top]](#) 

