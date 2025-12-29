---
id: beta-sod-violation-check-result2
title: SodViolationCheckResult2
pagination_label: SodViolationCheckResult2
sidebar_label: SodViolationCheckResult2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SodViolationCheckResult2', 'BetaSodViolationCheckResult2'] 
slug: /tools/sdk/powershell/beta/models/sod-violation-check-result2
tags: ['SDK', 'Software Development Kit', 'SodViolationCheckResult2', 'BetaSodViolationCheckResult2']
---


# SodViolationCheckResult2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**ErrorMessageDto**](error-message-dto) |  | [optional] 
**ClientMetadata** | **map[string]String** | Arbitrary key-value pairs. They will never be processed by the IdentityNow system but will be returned on completion of the violation check. | [optional] 
**ViolationContexts** | [**[]SodViolationContext2**](sod-violation-context2) |  | [optional] 
**ViolatedPolicies** | [**[]SodPolicyDto1**](sod-policy-dto1) | A list of the Policies that were violated. | [optional] 

## Examples

- Prepare the resource
```powershell
$SodViolationCheckResult2 = Initialize-BetaSodViolationCheckResult2  -Message null `
 -ClientMetadata {requestedAppName=test-app, requestedAppId=2c91808f7892918f0178b78da4a305a1} `
 -ViolationContexts null `
 -ViolatedPolicies null
```

- Convert the resource to JSON
```powershell
$SodViolationCheckResult2 | ConvertTo-JSON
```


[[Back to top]](#) 

