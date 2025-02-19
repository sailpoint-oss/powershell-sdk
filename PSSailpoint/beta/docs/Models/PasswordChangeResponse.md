---
id: beta-password-change-response
title: PasswordChangeResponse
pagination_label: PasswordChangeResponse
sidebar_label: PasswordChangeResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PasswordChangeResponse', 'BetaPasswordChangeResponse'] 
slug: /tools/sdk/powershell/beta/models/password-change-response
tags: ['SDK', 'Software Development Kit', 'PasswordChangeResponse', 'BetaPasswordChangeResponse']
---


# PasswordChangeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestId** | **String** | The password change request ID | [optional] 
**State** |  **Enum** [  "IN_PROGRESS",    "FINISHED",    "FAILED" ] | Password change state | [optional] 

## Examples

- Prepare the resource
```powershell
$PasswordChangeResponse = Initialize-PSSailpoint.BetaPasswordChangeResponse  -RequestId 089899f13a8f4da7824996191587bab9 `
 -State null
$PasswordChangeResponse = @"{  "RequestId": "089899f13a8f4da7824996191587bab9", "State": "null" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToPasswordChangeResponse -Json $PasswordChangeResponse
```


[[Back to top]](#) 

