---
id: v2024-identity-preview-response
title: IdentityPreviewResponse
pagination_label: IdentityPreviewResponse
sidebar_label: IdentityPreviewResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityPreviewResponse', 'V2024IdentityPreviewResponse'] 
slug: /tools/sdk/powershell/v2024/models/identity-preview-response
tags: ['SDK', 'Software Development Kit', 'IdentityPreviewResponse', 'V2024IdentityPreviewResponse']
---


# IdentityPreviewResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**IdentityPreviewResponseIdentity**](identity-preview-response-identity) |  | [optional] 
**PreviewAttributes** | [**[]IdentityAttributePreview**](identity-attribute-preview) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityPreviewResponse = Initialize-PSSailpoint.V2024IdentityPreviewResponse  -Identity null `
 -PreviewAttributes null
$IdentityPreviewResponse = @"{  "Identity": null, "PreviewAttributes": null }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToIdentityPreviewResponse -Json $IdentityPreviewResponse
```


[[Back to top]](#) 

