---
id: correlation-rule-action
title: CorrelationRuleAction
pagination_label: CorrelationRuleAction
sidebar_label: CorrelationRuleAction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CorrelationRuleAction', 'CorrelationRuleAction'] 
slug: /tools/sdk/powershell/machineidentities/models/correlation-rule-action
tags: ['SDK', 'Software Development Kit', 'CorrelationRuleAction', 'CorrelationRuleAction']
---


# CorrelationRuleAction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "IDENTITY",    "ACCOUNT",    "GOVERNANCE_GROUP" ] | The target owner type resolved by this action. | [required]
**Payload** | **map[string]AnyType** | Action-specific payload. | [optional] 

## Examples

- Prepare the resource
```powershell
$CorrelationRuleAction = Initialize-CorrelationRuleAction  -Type IDENTITY `
 -Payload {"identityId":"2c9180858082150f0180893dbaf44201"}
```

- Convert the resource to JSON
```powershell
$CorrelationRuleAction | ConvertTo-JSON
```


[[Back to top]](#) 

