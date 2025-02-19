---
id: beta-identity-attributes-changed
title: IdentityAttributesChanged
pagination_label: IdentityAttributesChanged
sidebar_label: IdentityAttributesChanged
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityAttributesChanged', 'BetaIdentityAttributesChanged'] 
slug: /tools/sdk/powershell/beta/models/identity-attributes-changed
tags: ['SDK', 'Software Development Kit', 'IdentityAttributesChanged', 'BetaIdentityAttributesChanged']
---


# IdentityAttributesChanged

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**IdentityAttributesChangedIdentity**](identity-attributes-changed-identity) |  | [required]
**Changes** | [**[]IdentityAttributesChangedChangesInner**](identity-attributes-changed-changes-inner) | A list of one or more identity attributes that changed on the identity. | [required]

## Examples

- Prepare the resource
```powershell
$IdentityAttributesChanged = Initialize-PSSailpoint.BetaIdentityAttributesChanged  -Identity null `
 -Changes null
$IdentityAttributesChanged = @"{  "Identity": null, "Changes": null }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToIdentityAttributesChanged -Json $IdentityAttributesChanged
```


[[Back to top]](#) 

