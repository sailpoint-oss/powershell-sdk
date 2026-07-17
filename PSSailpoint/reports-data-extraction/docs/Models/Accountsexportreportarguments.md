---
id: accountsexportreportarguments
title: Accountsexportreportarguments
pagination_label: Accountsexportreportarguments
sidebar_label: Accountsexportreportarguments
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Accountsexportreportarguments', 'Accountsexportreportarguments'] 
slug: /tools/sdk/powershell/reportsdataextraction/models/accountsexportreportarguments
tags: ['SDK', 'Software Development Kit', 'Accountsexportreportarguments', 'Accountsexportreportarguments']
---


# Accountsexportreportarguments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Application** | **String** | Source ID. | [required]
**SourceName** | **String** | Source name. | [required]

## Examples

- Prepare the resource
```powershell
$Accountsexportreportarguments = Initialize-Accountsexportreportarguments  -Application 2c9180897eSourceIde781782f705b9 `
 -SourceName Active Directory
```

- Convert the resource to JSON
```powershell
$Accountsexportreportarguments | ConvertTo-JSON
```


[[Back to top]](#) 

