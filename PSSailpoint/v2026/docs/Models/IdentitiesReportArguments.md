---
id: v2026-identities-report-arguments
title: IdentitiesReportArguments
pagination_label: IdentitiesReportArguments
sidebar_label: IdentitiesReportArguments
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentitiesReportArguments', 'V2026IdentitiesReportArguments'] 
slug: /tools/sdk/powershell/v2026/models/identities-report-arguments
tags: ['SDK', 'Software Development Kit', 'IdentitiesReportArguments', 'V2026IdentitiesReportArguments']
---


# IdentitiesReportArguments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CorrelatedOnly** | **Boolean** | Flag to specify if only correlated identities are included in report. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$IdentitiesReportArguments = Initialize-V2026IdentitiesReportArguments  -CorrelatedOnly true
```

- Convert the resource to JSON
```powershell
$IdentitiesReportArguments | ConvertTo-JSON
```


[[Back to top]](#) 

