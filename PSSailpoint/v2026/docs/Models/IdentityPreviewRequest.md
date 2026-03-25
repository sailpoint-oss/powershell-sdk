---
id: v2026-identity-preview-request
title: IdentityPreviewRequest
pagination_label: IdentityPreviewRequest
sidebar_label: IdentityPreviewRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityPreviewRequest', 'V2026IdentityPreviewRequest'] 
slug: /tools/sdk/powershell/v2026/models/identity-preview-request
tags: ['SDK', 'Software Development Kit', 'IdentityPreviewRequest', 'V2026IdentityPreviewRequest']
---


# IdentityPreviewRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityId** | **String** | The Identity id | [optional] 
**IdentityAttributeConfig** | [**IdentityAttributeConfig**](identity-attribute-config) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityPreviewRequest = Initialize-V2026IdentityPreviewRequest  -IdentityId null `
 -IdentityAttributeConfig null
```

- Convert the resource to JSON
```powershell
$IdentityPreviewRequest | ConvertTo-JSON
```


[[Back to top]](#) 

