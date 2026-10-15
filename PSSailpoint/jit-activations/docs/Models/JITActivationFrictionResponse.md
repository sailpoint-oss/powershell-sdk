---
id: jit-activation-friction-response
title: JITActivationFrictionResponse
pagination_label: JITActivationFrictionResponse
sidebar_label: JITActivationFrictionResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JITActivationFrictionResponse', 'JITActivationFrictionResponse'] 
slug: /tools/sdk/powershell/jitactivations/models/jit-activation-friction-response
tags: ['SDK', 'Software Development Kit', 'JITActivationFrictionResponse', 'JITActivationFrictionResponse']
---


# JITActivationFrictionResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **JITActivationFrictionType** | Kind of friction step. | [required]
**Status** | **JITActivationFrictionStatus** | Lifecycle of this friction step. | [required]
**SubmittedData** | [**FrictionSubmittedData**](friction-submitted-data) | Data submitted for this friction step. | [required]
**BypassAllowed** | **Boolean** | Whether this step may be bypassed. | [required]
**MinWords** | **Int32** | Minimum word count for a justification step. | [optional] 

## Examples

- Prepare the resource
```powershell
$JITActivationFrictionResponse = Initialize-JITActivationFrictionResponse  -Type null `
 -Status null `
 -SubmittedData null `
 -BypassAllowed false `
 -MinWords 5
```

- Convert the resource to JSON
```powershell
$JITActivationFrictionResponse | ConvertTo-JSON
```


[[Back to top]](#) 

