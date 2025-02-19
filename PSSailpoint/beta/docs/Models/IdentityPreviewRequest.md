---
id: beta-identity-preview-request
title: IdentityPreviewRequest
pagination_label: IdentityPreviewRequest
sidebar_label: IdentityPreviewRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityPreviewRequest', 'BetaIdentityPreviewRequest'] 
slug: /tools/sdk/powershell/beta/models/identity-preview-request
tags: ['SDK', 'Software Development Kit', 'IdentityPreviewRequest', 'BetaIdentityPreviewRequest']
---


# IdentityPreviewRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IdentityId** | **String** |  | [optional] 
**IdentityAttributeConfig** | [**IdentityAttributeConfig**](identity-attribute-config) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityPreviewRequest = Initialize-PSSailpoint.BetaIdentityPreviewRequest  -IdentityId null `
 -IdentityAttributeConfig null
$IdentityPreviewRequest = @"{  "IdentityId": "null", "IdentityAttributeConfig": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToIdentityPreviewRequest -Json $IdentityPreviewRequest
```


[[Back to top]](#) 

