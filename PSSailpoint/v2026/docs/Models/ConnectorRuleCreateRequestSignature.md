---
id: v2026-connector-rule-create-request-signature
title: ConnectorRuleCreateRequestSignature
pagination_label: ConnectorRuleCreateRequestSignature
sidebar_label: ConnectorRuleCreateRequestSignature
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ConnectorRuleCreateRequestSignature', 'V2026ConnectorRuleCreateRequestSignature'] 
slug: /tools/sdk/powershell/v2026/models/connector-rule-create-request-signature
tags: ['SDK', 'Software Development Kit', 'ConnectorRuleCreateRequestSignature', 'V2026ConnectorRuleCreateRequestSignature']
---


# ConnectorRuleCreateRequestSignature

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarInput** | [**[]Argument**](argument) |  | [required]
**Output** | [**Argument**](argument) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ConnectorRuleCreateRequestSignature = Initialize-V2026ConnectorRuleCreateRequestSignature  -VarInput null `
 -Output null
```

- Convert the resource to JSON
```powershell
$ConnectorRuleCreateRequestSignature | ConvertTo-JSON
```


[[Back to top]](#) 

