---
id: multi-host-integrations-account-correlation-rule
title: MultiHostIntegrationsAccountCorrelationRule
pagination_label: MultiHostIntegrationsAccountCorrelationRule
sidebar_label: MultiHostIntegrationsAccountCorrelationRule
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MultiHostIntegrationsAccountCorrelationRule', 'MultiHostIntegrationsAccountCorrelationRule'] 
slug: /tools/sdk/powershell/multihostintegration/models/multi-host-integrations-account-correlation-rule
tags: ['SDK', 'Software Development Kit', 'MultiHostIntegrationsAccountCorrelationRule', 'MultiHostIntegrationsAccountCorrelationRule']
---


# MultiHostIntegrationsAccountCorrelationRule

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "RULE" ] | Type of object being referenced. | [optional] 
**Id** | **String** | Rule ID. | [optional] 
**Name** | **String** | Rule's human-readable display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiHostIntegrationsAccountCorrelationRule = Initialize-MultiHostIntegrationsAccountCorrelationRule  -Type RULE `
 -Id 2c918085708c274401708c2a8a760001 `
 -Name Example Rule
```

- Convert the resource to JSON
```powershell
$MultiHostIntegrationsAccountCorrelationRule | ConvertTo-JSON
```


[[Back to top]](#) 

