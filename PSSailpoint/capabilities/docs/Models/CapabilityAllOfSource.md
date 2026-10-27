---
id: capability-all-of-source
title: CapabilityAllOfSource
pagination_label: CapabilityAllOfSource
sidebar_label: CapabilityAllOfSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CapabilityAllOfSource', 'CapabilityAllOfSource'] 
slug: /tools/sdk/powershell/capabilities/models/capability-all-of-source
tags: ['SDK', 'Software Development Kit', 'CapabilityAllOfSource', 'CapabilityAllOfSource']
---


# CapabilityAllOfSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$CapabilityAllOfSource = Initialize-CapabilityAllOfSource  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$CapabilityAllOfSource | ConvertTo-JSON
```


[[Back to top]](#) 

