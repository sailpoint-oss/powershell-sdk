---
id: beta-sod-violation-context-check-completed2
title: SodViolationContextCheckCompleted2
pagination_label: SodViolationContextCheckCompleted2
sidebar_label: SodViolationContextCheckCompleted2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SodViolationContextCheckCompleted2', 'BetaSodViolationContextCheckCompleted2'] 
slug: /tools/sdk/powershell/beta/models/sod-violation-context-check-completed2
tags: ['SDK', 'Software Development Kit', 'SodViolationContextCheckCompleted2', 'BetaSodViolationContextCheckCompleted2']
---


# SodViolationContextCheckCompleted2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** |  **Enum** [  "SUCCESS",    "ERROR" ] | The status of SOD violation check | [optional] 
**Uuid** | **String** | The id of the Violation check event | [optional] 
**ViolationCheckResult** | [**SodViolationCheckResult2**](sod-violation-check-result2) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SodViolationContextCheckCompleted2 = Initialize-BetaSodViolationContextCheckCompleted2  -State SUCCESS `
 -Uuid f73d16e9-a038-46c5-b217-1246e15fdbdd `
 -ViolationCheckResult null
```

- Convert the resource to JSON
```powershell
$SodViolationContextCheckCompleted2 | ConvertTo-JSON
```


[[Back to top]](#) 

