---
id: v2026-managed-cluster-encryption-config
title: ManagedClusterEncryptionConfig
pagination_label: ManagedClusterEncryptionConfig
sidebar_label: ManagedClusterEncryptionConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ManagedClusterEncryptionConfig', 'V2026ManagedClusterEncryptionConfig'] 
slug: /tools/sdk/powershell/v2026/models/managed-cluster-encryption-config
tags: ['SDK', 'Software Development Kit', 'ManagedClusterEncryptionConfig', 'V2026ManagedClusterEncryptionConfig']
---


# ManagedClusterEncryptionConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Format** |  **Enum** [  "V2",    "V3" ] | Specifies the format used for encrypted data, such as secrets. The format determines how the encrypted data is structured and processed. | [optional] 

## Examples

- Prepare the resource
```powershell
$ManagedClusterEncryptionConfig = Initialize-V2026ManagedClusterEncryptionConfig  -Format V3
```

- Convert the resource to JSON
```powershell
$ManagedClusterEncryptionConfig | ConvertTo-JSON
```


[[Back to top]](#) 

