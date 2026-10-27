---
id: capability-owners-primary
title: CapabilityOwnersPrimary
pagination_label: CapabilityOwnersPrimary
sidebar_label: CapabilityOwnersPrimary
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CapabilityOwnersPrimary', 'CapabilityOwnersPrimary'] 
slug: /tools/sdk/powershell/capabilities/models/capability-owners-primary
tags: ['SDK', 'Software Development Kit', 'CapabilityOwnersPrimary', 'CapabilityOwnersPrimary']
---


# CapabilityOwnersPrimary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$CapabilityOwnersPrimary = Initialize-CapabilityOwnersPrimary  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$CapabilityOwnersPrimary | ConvertTo-JSON
```


[[Back to top]](#) 

