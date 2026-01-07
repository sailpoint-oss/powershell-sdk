---
id: beta-managed-cluster-encryption-config
title: ManagedClusterEncryptionConfig
pagination_label: ManagedClusterEncryptionConfig
sidebar_label: ManagedClusterEncryptionConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ManagedClusterEncryptionConfig', 'BetaManagedClusterEncryptionConfig'] 
slug: /tools/sdk/powershell/beta/models/managed-cluster-encryption-config
tags: ['SDK', 'Software Development Kit', 'ManagedClusterEncryptionConfig', 'BetaManagedClusterEncryptionConfig']
---


# ManagedClusterEncryptionConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Format** |  **Enum** [  "V2",    "V3" ] | Specifies the format used for encrypted data, such as secrets. The format determines how the encrypted data is structured and processed. | [optional] 

## Examples

- Prepare the resource
```powershell
$ManagedClusterEncryptionConfig = Initialize-BetaManagedClusterEncryptionConfig  -Format V3
```

- Convert the resource to JSON
```powershell
$ManagedClusterEncryptionConfig | ConvertTo-JSON
```


[[Back to top]](#) 

