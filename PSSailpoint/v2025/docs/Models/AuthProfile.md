---
id: v2025-auth-profile
title: AuthProfile
pagination_label: AuthProfile
sidebar_label: AuthProfile
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AuthProfile', 'V2025AuthProfile'] 
slug: /tools/sdk/powershell/v2025/models/auth-profile
tags: ['SDK', 'Software Development Kit', 'AuthProfile', 'V2025AuthProfile']
---


# AuthProfile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Authentication Profile name. | [optional] 
**OffNetwork** | **Boolean** | Use it to block access from off network. | [optional] [default to $false]
**UntrustedGeography** | **Boolean** | Use it to block access from untrusted geoographies. | [optional] [default to $false]
**ApplicationId** | **String** | Application ID. | [optional] 
**ApplicationName** | **String** | Application name. | [optional] 
**Type** |  **Enum** [  "BLOCK",    "MFA",    "NON_PTA",    "PTA" ] | Type of the Authentication Profile. | [optional] 
**StrongAuthLogin** | **Boolean** | Use it to enable strong authentication. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$AuthProfile = Initialize-V2025AuthProfile  -Name EndToEnd-Profile `
 -OffNetwork true `
 -UntrustedGeography true `
 -ApplicationId 2c91808458ae7a4f0158b1bbf8af0628 `
 -ApplicationName EndToEnd-Source `
 -Type PTA `
 -StrongAuthLogin true
```

- Convert the resource to JSON
```powershell
$AuthProfile | ConvertTo-JSON
```


[[Back to top]](#) 

