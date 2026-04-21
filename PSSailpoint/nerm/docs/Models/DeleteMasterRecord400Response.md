---
id: nerm-delete-master-record400-response
title: DeleteMasterRecord400Response
pagination_label: DeleteMasterRecord400Response
sidebar_label: DeleteMasterRecord400Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DeleteMasterRecord400Response', 'NERMDeleteMasterRecord400Response'] 
slug: /tools/sdk/powershell/nerm/models/delete-master-record400-response
tags: ['SDK', 'Software Development Kit', 'DeleteMasterRecord400Response', 'NERMDeleteMasterRecord400Response']
---


# DeleteMasterRecord400Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **String** | A message describing the error that occurred | [optional] 

## Examples

- Prepare the resource
```powershell
$DeleteMasterRecord400Response = Initialize-NERMDeleteMasterRecord400Response  -VarError null
```

- Convert the resource to JSON
```powershell
$DeleteMasterRecord400Response | ConvertTo-JSON
```


[[Back to top]](#) 

