---
id: identitiesdetailsreportarguments
title: Identitiesdetailsreportarguments
pagination_label: Identitiesdetailsreportarguments
sidebar_label: Identitiesdetailsreportarguments
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Identitiesdetailsreportarguments', 'Identitiesdetailsreportarguments'] 
slug: /tools/sdk/powershell/reportsdataextraction/models/identitiesdetailsreportarguments
tags: ['SDK', 'Software Development Kit', 'Identitiesdetailsreportarguments', 'Identitiesdetailsreportarguments']
---


# Identitiesdetailsreportarguments

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CorrelatedOnly** | **Boolean** | Flag to specify if only correlated identities are included in report. | [required][default to $false]

## Examples

- Prepare the resource
```powershell
$Identitiesdetailsreportarguments = Initialize-Identitiesdetailsreportarguments  -CorrelatedOnly true
```

- Convert the resource to JSON
```powershell
$Identitiesdetailsreportarguments | ConvertTo-JSON
```


[[Back to top]](#) 

