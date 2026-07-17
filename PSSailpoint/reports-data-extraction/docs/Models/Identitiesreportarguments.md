---
id: identitiesreportarguments
title: Identitiesreportarguments
pagination_label: Identitiesreportarguments
sidebar_label: Identitiesreportarguments
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Identitiesreportarguments', 'Identitiesreportarguments'] 
slug: /tools/sdk/powershell/reportsdataextraction/models/identitiesreportarguments
tags: ['SDK', 'Software Development Kit', 'Identitiesreportarguments', 'Identitiesreportarguments']
---


# Identitiesreportarguments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CorrelatedOnly** | **Boolean** | Flag to specify if only correlated identities are included in report. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$Identitiesreportarguments = Initialize-Identitiesreportarguments  -CorrelatedOnly true
```

- Convert the resource to JSON
```powershell
$Identitiesreportarguments | ConvertTo-JSON
```


[[Back to top]](#) 

