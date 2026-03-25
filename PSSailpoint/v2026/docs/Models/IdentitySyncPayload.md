---
id: v2026-identity-sync-payload
title: IdentitySyncPayload
pagination_label: IdentitySyncPayload
sidebar_label: IdentitySyncPayload
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentitySyncPayload', 'V2026IdentitySyncPayload'] 
slug: /tools/sdk/powershell/v2026/models/identity-sync-payload
tags: ['SDK', 'Software Development Kit', 'IdentitySyncPayload', 'V2026IdentitySyncPayload']
---


# IdentitySyncPayload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Payload type. | [required]
**DataJson** | **String** | Payload type. | [required]

## Examples

- Prepare the resource
```powershell
$IdentitySyncPayload = Initialize-V2026IdentitySyncPayload  -Type SYNCHRONIZE_IDENTITY_ATTRIBUTES `
 -DataJson {"identityId":"2c918083746f642c01746f990884012a"}
```

- Convert the resource to JSON
```powershell
$IdentitySyncPayload | ConvertTo-JSON
```


[[Back to top]](#) 

