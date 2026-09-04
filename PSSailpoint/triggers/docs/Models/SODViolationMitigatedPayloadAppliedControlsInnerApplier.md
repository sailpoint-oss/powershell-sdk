---
id: sod-violation-mitigated-payload-applied-controls-inner-applier
title: SODViolationMitigatedPayloadAppliedControlsInnerApplier
pagination_label: SODViolationMitigatedPayloadAppliedControlsInnerApplier
sidebar_label: SODViolationMitigatedPayloadAppliedControlsInnerApplier
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SODViolationMitigatedPayloadAppliedControlsInnerApplier', 'SODViolationMitigatedPayloadAppliedControlsInnerApplier'] 
slug: /tools/sdk/powershell/triggers/models/sod-violation-mitigated-payload-applied-controls-inner-applier
tags: ['SDK', 'Software Development Kit', 'SODViolationMitigatedPayloadAppliedControlsInnerApplier', 'SODViolationMitigatedPayloadAppliedControlsInnerApplier']
---


# SODViolationMitigatedPayloadAppliedControlsInnerApplier

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Applier ID. | [optional] 
**Type** |  **Enum** [  "IDENTITY" ] | DTO type of the applier reference. | [optional] 

## Examples

- Prepare the resource
```powershell
$SODViolationMitigatedPayloadAppliedControlsInnerApplier = Initialize-SODViolationMitigatedPayloadAppliedControlsInnerApplier  -Id 2c918088837fe14901838062029a04bf `
 -Type IDENTITY
```

- Convert the resource to JSON
```powershell
$SODViolationMitigatedPayloadAppliedControlsInnerApplier | ConvertTo-JSON
```


[[Back to top]](#) 

