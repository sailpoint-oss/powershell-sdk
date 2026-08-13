---
id: business-application-owner
title: BusinessApplicationOwner
pagination_label: BusinessApplicationOwner
sidebar_label: BusinessApplicationOwner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BusinessApplicationOwner', 'BusinessApplicationOwner'] 
slug: /tools/sdk/powershell/businessapplications/models/business-application-owner
tags: ['SDK', 'Software Development Kit', 'BusinessApplicationOwner', 'BusinessApplicationOwner']
---


# BusinessApplicationOwner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$BusinessApplicationOwner = Initialize-BusinessApplicationOwner  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$BusinessApplicationOwner | ConvertTo-JSON
```


[[Back to top]](#) 

