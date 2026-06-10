---
id: source2
title: Source2
pagination_label: Source2
sidebar_label: Source2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Source2', 'Source2'] 
slug: /tools/sdk/powershell/identityattributesv1/models/source2
tags: ['SDK', 'Software Development Kit', 'Source2', 'Source2']
---


# Source2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Attribute mapping type. | [optional] 
**Properties** | [**SystemCollectionsHashtable**](system-collections-hashtable) | Attribute mapping properties. | [optional] 

## Examples

- Prepare the resource
```powershell
$Source2 = Initialize-Source2  -Type rule `
 -Properties {"ruleType":"IdentityAttribute","ruleName":"Cloud Promote Identity Attribute"}
```

- Convert the resource to JSON
```powershell
$Source2 | ConvertTo-JSON
```


[[Back to top]](#) 

