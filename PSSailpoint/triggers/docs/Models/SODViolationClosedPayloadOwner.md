---
id: sod-violation-closed-payload-owner
title: SODViolationClosedPayloadOwner
pagination_label: SODViolationClosedPayloadOwner
sidebar_label: SODViolationClosedPayloadOwner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SODViolationClosedPayloadOwner', 'SODViolationClosedPayloadOwner'] 
slug: /tools/sdk/powershell/triggers/models/sod-violation-closed-payload-owner
tags: ['SDK', 'Software Development Kit', 'SODViolationClosedPayloadOwner', 'SODViolationClosedPayloadOwner']
---


# SODViolationClosedPayloadOwner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Owner ID. | [optional] 
**Type** |  **Enum** [  "IDENTITY",    "GOVERNANCE_GROUP" ] | Owner type. | [optional] 

## Examples

- Prepare the resource
```powershell
$SODViolationClosedPayloadOwner = Initialize-SODViolationClosedPayloadOwner  -Id 2c918088837fe14901838062029a04bf `
 -Type IDENTITY
```

- Convert the resource to JSON
```powershell
$SODViolationClosedPayloadOwner | ConvertTo-JSON
```


[[Back to top]](#) 

