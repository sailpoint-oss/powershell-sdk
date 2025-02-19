---
id: okta-verification-request
title: OktaVerificationRequest
pagination_label: OktaVerificationRequest
sidebar_label: OktaVerificationRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'OktaVerificationRequest', 'OktaVerificationRequest'] 
slug: /tools/sdk/powershell/v3/models/okta-verification-request
tags: ['SDK', 'Software Development Kit', 'OktaVerificationRequest', 'OktaVerificationRequest']
---


# OktaVerificationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** | User identifier for Verification request. The value of the user's attribute. | [required]

## Examples

- Prepare the resource
```powershell
$OktaVerificationRequest = Initialize-PSSailpoint.V3OktaVerificationRequest  -UserId example@mail.com
$OktaVerificationRequest = @"{  "UserId": "example@mail.com" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToOktaVerificationRequest -Json $OktaVerificationRequest
```


[[Back to top]](#) 

