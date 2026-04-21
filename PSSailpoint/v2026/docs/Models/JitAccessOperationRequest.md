---
id: v2026-jit-access-operation-request
title: JitAccessOperationRequest
pagination_label: JitAccessOperationRequest
sidebar_label: JitAccessOperationRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JitAccessOperationRequest', 'V2026JitAccessOperationRequest'] 
slug: /tools/sdk/powershell/v2026/models/jit-access-operation-request
tags: ['SDK', 'Software Development Kit', 'JitAccessOperationRequest', 'V2026JitAccessOperationRequest']
---


# JitAccessOperationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Op** |  **Enum** [  "replace" ] | Operation type. Defaults to `replace` if omitted. | [optional] [default to "replace"]
**Path** |  **Enum** [  "/entitlementIds",    "/maxActivationPeriodMins",    "/maxActivationPeriodExtensionMins",    "/defaultMaxActivationPeriodMins",    "/defaultMaxActivationPeriodExtensionMins",    "/notificationRecipients",    "/notificationTemplate",    "/applyToFutureAssignments" ] | Path to replace. Only the following JSON Pointer-style paths are supported.  | [required]
**Value** | [**JitAccessOperationRequestValue**](jit-access-operation-request-value) |  | [required]

## Examples

- Prepare the resource
```powershell
$JitAccessOperationRequest = Initialize-V2026JitAccessOperationRequest  -Op replace `
 -Path /maxActivationPeriodMins `
 -Value null
```

- Convert the resource to JSON
```powershell
$JitAccessOperationRequest | ConvertTo-JSON
```


[[Back to top]](#) 

