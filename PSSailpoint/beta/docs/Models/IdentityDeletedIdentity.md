---
id: beta-identity-deleted-identity
title: IdentityDeletedIdentity
pagination_label: IdentityDeletedIdentity
sidebar_label: IdentityDeletedIdentity
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityDeletedIdentity', 'BetaIdentityDeletedIdentity'] 
slug: /tools/sdk/powershell/beta/models/identity-deleted-identity
tags: ['SDK', 'Software Development Kit', 'IdentityDeletedIdentity', 'BetaIdentityDeletedIdentity']
---


# IdentityDeletedIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "IDENTITY" ] | Deleted identity's DTO type. | [required]
**Id** | **String** | Deleted identity ID. | [required]
**Name** | **String** | Deleted identity's display name. | [required]

## Examples

- Prepare the resource
```powershell
$IdentityDeletedIdentity = Initialize-PSSailpoint.BetaIdentityDeletedIdentity  -Type IDENTITY `
 -Id 2c7180a46faadee4016fb4e018c20642 `
 -Name Michael Michaels
$IdentityDeletedIdentity = @"{  "Type": "IDENTITY", "Id": "2c7180a46faadee4016fb4e018c20642", "Name": "Michael Michaels" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToIdentityDeletedIdentity -Json $IdentityDeletedIdentity
```


[[Back to top]](#) 

