---
id: beta-identity-preview-response
title: IdentityPreviewResponse
pagination_label: IdentityPreviewResponse
sidebar_label: IdentityPreviewResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityPreviewResponse', 'BetaIdentityPreviewResponse'] 
slug: /tools/sdk/powershell/beta/models/identity-preview-response
tags: ['SDK', 'Software Development Kit', 'IdentityPreviewResponse', 'BetaIdentityPreviewResponse']
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
$IdentityPreviewResponse = Initialize-PSSailpoint.BetaIdentityPreviewResponse  -Identity null `
 -PreviewAttributes null
$IdentityPreviewResponse = @"{  "Identity": null, "PreviewAttributes": null }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToIdentityPreviewResponse -Json $IdentityPreviewResponse
```


[[Back to top]](#) 

