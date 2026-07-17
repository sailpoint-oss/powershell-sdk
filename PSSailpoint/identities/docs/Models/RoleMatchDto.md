---
id: role-match-dto
title: RoleMatchDto
pagination_label: RoleMatchDto
sidebar_label: RoleMatchDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleMatchDto', 'RoleMatchDto'] 
slug: /tools/sdk/powershell/identities/models/role-match-dto
tags: ['SDK', 'Software Development Kit', 'RoleMatchDto', 'RoleMatchDto']
---


# RoleMatchDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RoleRef** | [**BaseReferenceDto**](base-reference-dto) |  | [optional] 
**MatchedAttributes** | [**[]ContextAttributeDto**](context-attribute-dto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMatchDto = Initialize-RoleMatchDto  -RoleRef null `
 -MatchedAttributes null
```

- Convert the resource to JSON
```powershell
$RoleMatchDto | ConvertTo-JSON
```


[[Back to top]](#) 

