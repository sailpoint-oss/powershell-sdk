---
id: list-human-account-subtypes-v2401-response
title: ListHumanAccountSubtypesV2401Response
pagination_label: ListHumanAccountSubtypesV2401Response
sidebar_label: ListHumanAccountSubtypesV2401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListHumanAccountSubtypesV2401Response', 'ListHumanAccountSubtypesV2401Response'] 
slug: /tools/sdk/powershell/humanaccountsubtypes/models/list-human-account-subtypes-v2401-response
tags: ['SDK', 'Software Development Kit', 'ListHumanAccountSubtypesV2401Response', 'ListHumanAccountSubtypesV2401Response']
---


# ListHumanAccountSubtypesV2401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListHumanAccountSubtypesV2401Response = Initialize-ListHumanAccountSubtypesV2401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListHumanAccountSubtypesV2401Response | ConvertTo-JSON
```


[[Back to top]](#) 

