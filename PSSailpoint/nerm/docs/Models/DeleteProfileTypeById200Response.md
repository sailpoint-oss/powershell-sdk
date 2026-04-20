---
id: nerm-delete-profile-type-by-id200-response
title: DeleteProfileTypeById200Response
pagination_label: DeleteProfileTypeById200Response
sidebar_label: DeleteProfileTypeById200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DeleteProfileTypeById200Response', 'NERMDeleteProfileTypeById200Response'] 
slug: /tools/sdk/powershell/nerm/models/delete-profile-type-by-id200-response
tags: ['SDK', 'Software Development Kit', 'DeleteProfileTypeById200Response', 'NERMDeleteProfileTypeById200Response']
---


# DeleteProfileTypeById200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Info** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | A message confirming the operation | [optional] 

## Examples

- Prepare the resource
```powershell
$DeleteProfileTypeById200Response = Initialize-NERMDeleteProfileTypeById200Response  -Info object deleted
```

- Convert the resource to JSON
```powershell
$DeleteProfileTypeById200Response | ConvertTo-JSON
```


[[Back to top]](#) 

