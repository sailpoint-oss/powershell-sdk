---
id: v2024-identity-profile-identity-error-report-arguments
title: IdentityProfileIdentityErrorReportArguments
pagination_label: IdentityProfileIdentityErrorReportArguments
sidebar_label: IdentityProfileIdentityErrorReportArguments
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityProfileIdentityErrorReportArguments', 'V2024IdentityProfileIdentityErrorReportArguments'] 
slug: /tools/sdk/powershell/v2024/models/identity-profile-identity-error-report-arguments
tags: ['SDK', 'Software Development Kit', 'IdentityProfileIdentityErrorReportArguments', 'V2024IdentityProfileIdentityErrorReportArguments']
---


# IdentityProfileIdentityErrorReportArguments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuthoritativeSource** | **String** | Source ID. | [required]

## Examples

- Prepare the resource
```powershell
$IdentityProfileIdentityErrorReportArguments = Initialize-PSSailpoint.V2024IdentityProfileIdentityErrorReportArguments  -AuthoritativeSource 1234sourceId5678902
$IdentityProfileIdentityErrorReportArguments = @"{  "AuthoritativeSource": "1234sourceId5678902" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToIdentityProfileIdentityErrorReportArguments -Json $IdentityProfileIdentityErrorReportArguments
```


[[Back to top]](#) 

