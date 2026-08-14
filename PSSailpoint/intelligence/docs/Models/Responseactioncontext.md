---
id: responseactioncontext
title: Responseactioncontext
pagination_label: Responseactioncontext
sidebar_label: Responseactioncontext
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Responseactioncontext', 'Responseactioncontext'] 
slug: /tools/sdk/powershell/intelligence/models/responseactioncontext
tags: ['SDK', 'Software Development Kit', 'Responseactioncontext', 'Responseactioncontext']
---


# Responseactioncontext

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Source** |  **Enum** [  "CROWDSTRIKE",    "SENTINEL",    "SPLUNK",    "CUSTOM" ] | External system that initiated the action. | [required]
**ExternalAlertId** | **String** | External alert or case identifier. | [optional] 
**Reason** | **String** | Human-readable reason for the action. | [optional] 
**Operator** | **String** | Operator or analyst who initiated the action. | [optional] 

## Examples

- Prepare the resource
```powershell
$Responseactioncontext = Initialize-Responseactioncontext  -Source CROWDSTRIKE `
 -ExternalAlertId CS-FALCON-12345 `
 -Reason Contain compromised account `
 -Operator soc-analyst@customer.com
```

- Convert the resource to JSON
```powershell
$Responseactioncontext | ConvertTo-JSON
```


[[Back to top]](#) 

