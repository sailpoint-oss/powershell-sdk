---
id: multi-host-integrations-manager-correlation-rule
title: MultiHostIntegrationsManagerCorrelationRule
pagination_label: MultiHostIntegrationsManagerCorrelationRule
sidebar_label: MultiHostIntegrationsManagerCorrelationRule
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MultiHostIntegrationsManagerCorrelationRule', 'MultiHostIntegrationsManagerCorrelationRule'] 
slug: /tools/sdk/powershell/multihostintegration/models/multi-host-integrations-manager-correlation-rule
tags: ['SDK', 'Software Development Kit', 'MultiHostIntegrationsManagerCorrelationRule', 'MultiHostIntegrationsManagerCorrelationRule']
---


# MultiHostIntegrationsManagerCorrelationRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "RULE" ] | Type of object being referenced. | [optional] 
**Id** | **String** | Rule ID. | [optional] 
**Name** | **String** | Rule's human-readable display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiHostIntegrationsManagerCorrelationRule = Initialize-MultiHostIntegrationsManagerCorrelationRule  -Type RULE `
 -Id 2c918085708c274401708c2a8a760001 `
 -Name Example Rule
```

- Convert the resource to JSON
```powershell
$MultiHostIntegrationsManagerCorrelationRule | ConvertTo-JSON
```


[[Back to top]](#) 

