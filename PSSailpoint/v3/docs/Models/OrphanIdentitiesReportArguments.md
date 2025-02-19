---
id: orphan-identities-report-arguments
title: OrphanIdentitiesReportArguments
pagination_label: OrphanIdentitiesReportArguments
sidebar_label: OrphanIdentitiesReportArguments
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'OrphanIdentitiesReportArguments', 'OrphanIdentitiesReportArguments'] 
slug: /tools/sdk/powershell/v3/models/orphan-identities-report-arguments
tags: ['SDK', 'Software Development Kit', 'OrphanIdentitiesReportArguments', 'OrphanIdentitiesReportArguments']
---


# OrphanIdentitiesReportArguments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**SelectedFormats** | **[]String** | Output report file formats. These are formats for calling GET endpoint as query parameter 'fileFormat'.  In case report won't have this argument there will be ['CSV', 'PDF'] as default. | [optional] 

## Examples

- Prepare the resource
```powershell
$OrphanIdentitiesReportArguments = Initialize-PSSailpoint.V3OrphanIdentitiesReportArguments  -SelectedFormats [CSV]
$OrphanIdentitiesReportArguments = @"{  "SelectedFormats": ["CSV"] }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToOrphanIdentitiesReportArguments -Json $OrphanIdentitiesReportArguments
```


[[Back to top]](#) 

