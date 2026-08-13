---
id: business-application-additional-owners-inner
title: BusinessApplicationAdditionalOwnersInner
pagination_label: BusinessApplicationAdditionalOwnersInner
sidebar_label: BusinessApplicationAdditionalOwnersInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BusinessApplicationAdditionalOwnersInner', 'BusinessApplicationAdditionalOwnersInner'] 
slug: /tools/sdk/powershell/businessapplications/models/business-application-additional-owners-inner
tags: ['SDK', 'Software Development Kit', 'BusinessApplicationAdditionalOwnersInner', 'BusinessApplicationAdditionalOwnersInner']
---


# BusinessApplicationAdditionalOwnersInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$BusinessApplicationAdditionalOwnersInner = Initialize-BusinessApplicationAdditionalOwnersInner  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$BusinessApplicationAdditionalOwnersInner | ConvertTo-JSON
```


[[Back to top]](#) 

