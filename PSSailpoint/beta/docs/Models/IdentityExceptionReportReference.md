---
id: beta-identity-exception-report-reference
title: IdentityExceptionReportReference
pagination_label: IdentityExceptionReportReference
sidebar_label: IdentityExceptionReportReference
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityExceptionReportReference', 'BetaIdentityExceptionReportReference'] 
slug: /tools/sdk/powershell/beta/models/identity-exception-report-reference
tags: ['SDK', 'Software Development Kit', 'IdentityExceptionReportReference', 'BetaIdentityExceptionReportReference']
---


# IdentityExceptionReportReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TaskResultId** | **String** | The id of the task result | [optional] 
**ReportName** | **String** | The name of the report | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityExceptionReportReference = Initialize-PSSailpoint.BetaIdentityExceptionReportReference  -TaskResultId null `
 -ReportName My annual report
```

- Convert the resource to JSON
```powershell
$IdentityExceptionReportReference | ConvertTo-JSON
```


[[Back to top]](#) 

