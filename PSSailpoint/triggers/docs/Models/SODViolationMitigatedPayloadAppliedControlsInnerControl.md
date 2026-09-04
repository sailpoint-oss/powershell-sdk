---
id: sod-violation-mitigated-payload-applied-controls-inner-control
title: SODViolationMitigatedPayloadAppliedControlsInnerControl
pagination_label: SODViolationMitigatedPayloadAppliedControlsInnerControl
sidebar_label: SODViolationMitigatedPayloadAppliedControlsInnerControl
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SODViolationMitigatedPayloadAppliedControlsInnerControl', 'SODViolationMitigatedPayloadAppliedControlsInnerControl'] 
slug: /tools/sdk/powershell/triggers/models/sod-violation-mitigated-payload-applied-controls-inner-control
tags: ['SDK', 'Software Development Kit', 'SODViolationMitigatedPayloadAppliedControlsInnerControl', 'SODViolationMitigatedPayloadAppliedControlsInnerControl']
---


# SODViolationMitigatedPayloadAppliedControlsInnerControl

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Control ID. | [optional] 
**Type** |  **Enum** [  "COMPENSATING_CONTROL" ] | Control type (always **COMPENSATING_CONTROL** for this webhook). | [optional] 

## Examples

- Prepare the resource
```powershell
$SODViolationMitigatedPayloadAppliedControlsInnerControl = Initialize-SODViolationMitigatedPayloadAppliedControlsInnerControl  -Id 01ea1d945db14444a2356f71c22b3449 `
 -Type COMPENSATING_CONTROL
```

- Convert the resource to JSON
```powershell
$SODViolationMitigatedPayloadAppliedControlsInnerControl | ConvertTo-JSON
```


[[Back to top]](#) 

