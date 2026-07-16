---
id: correlationruleaction
title: Correlationruleaction
pagination_label: Correlationruleaction
sidebar_label: Correlationruleaction
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Correlationruleaction', 'Correlationruleaction'] 
slug: /tools/sdk/powershell/machineidentities/models/correlationruleaction
tags: ['SDK', 'Software Development Kit', 'Correlationruleaction', 'Correlationruleaction']
---


# Correlationruleaction

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "IDENTITY",    "ACCOUNT",    "GOVERNANCE_GROUP" ] | The target owner type resolved by this action. | [required]
**Payload** | **map[string]AnyType** | Action-specific payload. | [optional] 

## Examples

- Prepare the resource
```powershell
$Correlationruleaction = Initialize-Correlationruleaction  -Type IDENTITY `
 -Payload {"identityId":"2c9180858082150f0180893dbaf44201"}
```

- Convert the resource to JSON
```powershell
$Correlationruleaction | ConvertTo-JSON
```


[[Back to top]](#) 

