---
id: identitycollectortypesresponse
title: Identitycollectortypesresponse
pagination_label: Identitycollectortypesresponse
sidebar_label: Identitycollectortypesresponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Identitycollectortypesresponse', 'Identitycollectortypesresponse'] 
slug: /tools/sdk/powershell/dataaccesssecurity/models/identitycollectortypesresponse
tags: ['SDK', 'Software Development Kit', 'Identitycollectortypesresponse', 'Identitycollectortypesresponse']
---


# Identitycollectortypesresponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Types** | [**[]Identitycollectortype**](identitycollectortype) | Enabled public identity collector types. Flagged types (Snowflake, Databricks, Atlassian Suite) are omitted when their feature flags are disabled. | [required]

## Examples

- Prepare the resource
```powershell
$Identitycollectortypesresponse = Initialize-Identitycollectortypesresponse  -Types null
```

- Convert the resource to JSON
```powershell
$Identitycollectortypesresponse | ConvertTo-JSON
```


[[Back to top]](#) 

