---
id: identitycollectorbuiltinpropertiesresponse
title: Identitycollectorbuiltinpropertiesresponse
pagination_label: Identitycollectorbuiltinpropertiesresponse
sidebar_label: Identitycollectorbuiltinpropertiesresponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Identitycollectorbuiltinpropertiesresponse', 'Identitycollectorbuiltinpropertiesresponse'] 
slug: /tools/sdk/powershell/dataaccesssecurity/models/identitycollectorbuiltinpropertiesresponse
tags: ['SDK', 'Software Development Kit', 'Identitycollectorbuiltinpropertiesresponse', 'Identitycollectorbuiltinpropertiesresponse']
---


# Identitycollectorbuiltinpropertiesresponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Types** | [**[]Identitycollectorbuiltinpropertiesbytype**](identitycollectorbuiltinpropertiesbytype) | Built-in source attribute names grouped by identity collector type. | [required]

## Examples

- Prepare the resource
```powershell
$Identitycollectorbuiltinpropertiesresponse = Initialize-Identitycollectorbuiltinpropertiesresponse  -Types null
```

- Convert the resource to JSON
```powershell
$Identitycollectorbuiltinpropertiesresponse | ConvertTo-JSON
```


[[Back to top]](#) 

