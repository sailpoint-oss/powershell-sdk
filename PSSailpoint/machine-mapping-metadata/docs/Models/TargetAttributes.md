---
id: target-attributes
title: TargetAttributes
pagination_label: TargetAttributes
sidebar_label: TargetAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'TargetAttributes', 'TargetAttributes'] 
slug: /tools/sdk/powershell/machinemappingmetadata/models/target-attributes
tags: ['SDK', 'Software Development Kit', 'TargetAttributes', 'TargetAttributes']
---


# TargetAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | **[]String** | The target attribute names. | [optional] 

## Examples

- Prepare the resource
```powershell
$TargetAttributes = Initialize-TargetAttributes  -Attributes ["name","nativeIdentity"]
```

- Convert the resource to JSON
```powershell
$TargetAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

