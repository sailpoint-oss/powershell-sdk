---
id: beta-attribute-dto-list
title: AttributeDTOList
pagination_label: AttributeDTOList
sidebar_label: AttributeDTOList
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AttributeDTOList', 'BetaAttributeDTOList'] 
slug: /tools/sdk/powershell/beta/models/attribute-dto-list
tags: ['SDK', 'Software Development Kit', 'AttributeDTOList', 'BetaAttributeDTOList']
---


# AttributeDTOList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attributes** | [**[]AttributeDTO**](attribute-dto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AttributeDTOList = Initialize-PSSailpoint.BetaAttributeDTOList  -Attributes [{key&#x3D;iscPrivacy, name&#x3D;Privacy, multiselect&#x3D;false, status&#x3D;active, type&#x3D;governance, objectTypes&#x3D;[all], description&#x3D;Specifies the level of privacy associated with an access item., values&#x3D;[{value&#x3D;public, name&#x3D;Public, status&#x3D;active}]}]
```

- Convert the resource to JSON
```powershell
$AttributeDTOList | ConvertTo-JSON
```


[[Back to top]](#) 

