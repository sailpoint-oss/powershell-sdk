---
id: createdatadictionaryfieldrequest
title: Createdatadictionaryfieldrequest
pagination_label: Createdatadictionaryfieldrequest
sidebar_label: Createdatadictionaryfieldrequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Createdatadictionaryfieldrequest', 'Createdatadictionaryfieldrequest'] 
slug: /tools/sdk/powershell/dataaccesssecurity/models/createdatadictionaryfieldrequest
tags: ['SDK', 'Software Development Kit', 'Createdatadictionaryfieldrequest', 'Createdatadictionaryfieldrequest']
---


# Createdatadictionaryfieldrequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The unique field name to create. | [required]
**DataDictionaryType** |  **Enum** [  "Users",    "Roles",    "Permission Types",    "Business Resources" ] | The data dictionary that owns this field. | [required]

## Examples

- Prepare the resource
```powershell
$Createdatadictionaryfieldrequest = Initialize-Createdatadictionaryfieldrequest  -Name Department `
 -DataDictionaryType Users
```

- Convert the resource to JSON
```powershell
$Createdatadictionaryfieldrequest | ConvertTo-JSON
```


[[Back to top]](#) 

