---
id: v2026-owner-reference-dto
title: OwnerReferenceDto
pagination_label: OwnerReferenceDto
sidebar_label: OwnerReferenceDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'OwnerReferenceDto', 'V2026OwnerReferenceDto'] 
slug: /tools/sdk/powershell/v2026/models/owner-reference-dto
tags: ['SDK', 'Software Development Kit', 'OwnerReferenceDto', 'V2026OwnerReferenceDto']
---


# OwnerReferenceDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The owner id for the entitlement | [optional] 
**Name** | **String** | The owner name for the entitlement | [optional] 
**Type** |  **Enum** [  "IDENTITY" ] | The type of the owner. Initially only type IDENTITY is supported | [optional] 

## Examples

- Prepare the resource
```powershell
$OwnerReferenceDto = Initialize-V2026OwnerReferenceDto  -Id 2a2fdacca5e345f18bf7970cfbb8fec2 `
 -Name identity 1 `
 -Type IDENTITY
```

- Convert the resource to JSON
```powershell
$OwnerReferenceDto | ConvertTo-JSON
```


[[Back to top]](#) 

