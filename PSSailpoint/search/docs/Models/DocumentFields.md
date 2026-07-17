---
id: document-fields
title: DocumentFields
pagination_label: DocumentFields
sidebar_label: DocumentFields
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DocumentFields', 'DocumentFields'] 
slug: /tools/sdk/powershell/search/models/document-fields
tags: ['SDK', 'Software Development Kit', 'DocumentFields', 'DocumentFields']
---


# DocumentFields

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Pod** | **String** | Name of the pod. | [optional] 
**Org** | **String** | Name of the tenant. | [optional] 
**Type** | **DocumentType** |  | [optional] 
**Type** | **DocumentType** |  | [optional] 
**Version** | **String** | Version number. | [optional] 

## Examples

- Prepare the resource
```powershell
$DocumentFields = Initialize-DocumentFields  -Pod pod01-useast1 `
 -Org org-name `
 -Type null `
 -Type null `
 -Version v2
```

- Convert the resource to JSON
```powershell
$DocumentFields | ConvertTo-JSON
```


[[Back to top]](#) 

