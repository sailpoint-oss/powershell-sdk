---
id: jit-activation-friction-patch-request
title: JITActivationFrictionPatchRequest
pagination_label: JITActivationFrictionPatchRequest
sidebar_label: JITActivationFrictionPatchRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JITActivationFrictionPatchRequest', 'JITActivationFrictionPatchRequest'] 
slug: /tools/sdk/powershell/jitactivations/models/jit-activation-friction-patch-request
tags: ['SDK', 'Software Development Kit', 'JITActivationFrictionPatchRequest', 'JITActivationFrictionPatchRequest']
---


# JITActivationFrictionPatchRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **JITActivationFrictionType** | Kind of friction step being submitted. | [required]
**SubmittedData** | [**FrictionSubmittedData**](friction-submitted-data) | Data submitted for this friction step. Omit when bypassing a step that allows bypass. | [optional] 
**Bypass** | **Boolean** | Whether to bypass this friction step. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$JITActivationFrictionPatchRequest = Initialize-JITActivationFrictionPatchRequest  -Type null `
 -SubmittedData null `
 -Bypass false
```

- Convert the resource to JSON
```powershell
$JITActivationFrictionPatchRequest | ConvertTo-JSON
```


[[Back to top]](#) 

