---
id: beta-verification-poll-request
title: VerificationPollRequest
pagination_label: VerificationPollRequest
sidebar_label: VerificationPollRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'VerificationPollRequest', 'BetaVerificationPollRequest'] 
slug: /tools/sdk/powershell/beta/models/verification-poll-request
tags: ['SDK', 'Software Development Kit', 'VerificationPollRequest', 'BetaVerificationPollRequest']
---


# VerificationPollRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RequestId** | **String** | Verification request Id | [required]

## Examples

- Prepare the resource
```powershell
$VerificationPollRequest = Initialize-PSSailpoint.BetaVerificationPollRequest  -RequestId 089899f13a8f4da7824996191587bab9
$VerificationPollRequest = @"{  "RequestId": "089899f13a8f4da7824996191587bab9" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToVerificationPollRequest -Json $VerificationPollRequest
```


[[Back to top]](#) 

