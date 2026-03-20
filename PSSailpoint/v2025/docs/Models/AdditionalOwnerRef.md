---
id: v2025-additional-owner-ref
title: AdditionalOwnerRef
pagination_label: AdditionalOwnerRef
sidebar_label: AdditionalOwnerRef
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AdditionalOwnerRef', 'V2025AdditionalOwnerRef'] 
slug: /tools/sdk/powershell/v2025/models/additional-owner-ref
tags: ['SDK', 'Software Development Kit', 'AdditionalOwnerRef', 'V2025AdditionalOwnerRef']
---


# AdditionalOwnerRef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "IDENTITY",    "GOVERNANCE_GROUP" ] | Type of the additional owner; IDENTITY for an identity, GOVERNANCE_GROUP for a governance group. | [optional] 
**Id** | **String** | ID of the identity or governance group. | [optional] 
**Name** | **String** | Display name. It may be left null or omitted on input. If set, it must match the current display name of the identity or governance group, otherwise a 400 Bad Request error may result. | [optional] 

## Examples

- Prepare the resource
```powershell
$AdditionalOwnerRef = Initialize-V2025AdditionalOwnerRef  -Type IDENTITY `
 -Id 2c9180a46faadee4016fb4e018c20639 `
 -Name support
```

- Convert the resource to JSON
```powershell
$AdditionalOwnerRef | ConvertTo-JSON
```


[[Back to top]](#) 

