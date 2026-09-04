---
id: sod-violation-closed-payload-policy
title: SODViolationClosedPayloadPolicy
pagination_label: SODViolationClosedPayloadPolicy
sidebar_label: SODViolationClosedPayloadPolicy
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SODViolationClosedPayloadPolicy', 'SODViolationClosedPayloadPolicy'] 
slug: /tools/sdk/powershell/triggers/models/sod-violation-closed-payload-policy
tags: ['SDK', 'Software Development Kit', 'SODViolationClosedPayloadPolicy', 'SODViolationClosedPayloadPolicy']
---


# SODViolationClosedPayloadPolicy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Policy ID. | [optional] 
**Type** |  **Enum** [  "SOD" ] | Policy type (always **SOD** for this webhook). | [optional] 

## Examples

- Prepare the resource
```powershell
$SODViolationClosedPayloadPolicy = Initialize-SODViolationClosedPayloadPolicy  -Id 01ea1d945db14444a2356f71c22b3449 `
 -Type SOD
```

- Convert the resource to JSON
```powershell
$SODViolationClosedPayloadPolicy | ConvertTo-JSON
```


[[Back to top]](#) 

