---
id: v2026-account-request-phase
title: AccountRequestPhase
pagination_label: AccountRequestPhase
sidebar_label: AccountRequestPhase
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountRequestPhase', 'V2026AccountRequestPhase'] 
slug: /tools/sdk/powershell/v2026/models/account-request-phase
tags: ['SDK', 'Software Development Kit', 'AccountRequestPhase', 'V2026AccountRequestPhase']
---


# AccountRequestPhase

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** |  **Enum** [  "APPROVAL_PHASE",    "PROVISIONING_PHASE" ] | Enum of account request phase type | [optional] 
**State** | [**AccountRequestPhaseState**](account-request-phase-state) |  | [optional] 
**Started** | **System.DateTime** | Start date of account request phase. | [optional] [readonly] 
**Finished** | **System.DateTime** | Finish date of account request phase. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$AccountRequestPhase = Initialize-V2026AccountRequestPhase  -Name APPROVAL_PHASE `
 -State null `
 -Started 2026-01-21T11:43:22.432Z `
 -Finished 2026-01-21T11:45:22.432Z
```

- Convert the resource to JSON
```powershell
$AccountRequestPhase | ConvertTo-JSON
```


[[Back to top]](#) 

