---
id: mfa-config-test-response
title: MfaConfigTestResponse
pagination_label: MfaConfigTestResponse
sidebar_label: MfaConfigTestResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MfaConfigTestResponse', 'MfaConfigTestResponse'] 
slug: /tools/sdk/powershell/v3/models/mfa-config-test-response
tags: ['SDK', 'Software Development Kit', 'MfaConfigTestResponse', 'MfaConfigTestResponse']
---


# MfaConfigTestResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**State** |  **Enum** [  "SUCCESS",    "FAILED" ] | The configuration test result. | [optional] [readonly] 
**VarError** | **String** | The error message to indicate the failure of configuration test. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$MfaConfigTestResponse = Initialize-PSSailpoint.V3MfaConfigTestResponse  -State SUCCESS `
 -VarError MFA Method is disabled.
$MfaConfigTestResponse = @"{  "State": "SUCCESS", "VarError": "MFA Method is disabled." }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToMfaConfigTestResponse -Json $MfaConfigTestResponse
```


[[Back to top]](#) 

