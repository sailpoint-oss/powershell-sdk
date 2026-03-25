---
id: v2026-report-details
title: ReportDetails
pagination_label: ReportDetails
sidebar_label: ReportDetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ReportDetails', 'V2026ReportDetails'] 
slug: /tools/sdk/powershell/v2026/models/report-details
tags: ['SDK', 'Software Development Kit', 'ReportDetails', 'V2026ReportDetails']
---


# ReportDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReportType** |  **Enum** [  "ACCOUNTS",    "IDENTITIES_DETAILS",    "IDENTITIES",    "IDENTITY_PROFILE_IDENTITY_ERROR",    "ORPHAN_IDENTITIES",    "SEARCH_EXPORT",    "UNCORRELATED_ACCOUNTS" ] | Use this property to define what report should be processed in the RDE service. | [optional] 
**Arguments** | [**ReportDetailsArguments**](report-details-arguments) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ReportDetails = Initialize-V2026ReportDetails  -ReportType ACCOUNTS `
 -Arguments null
```

- Convert the resource to JSON
```powershell
$ReportDetails | ConvertTo-JSON
```


[[Back to top]](#) 

