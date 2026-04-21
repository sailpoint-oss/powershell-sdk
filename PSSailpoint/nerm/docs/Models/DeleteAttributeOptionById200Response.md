---
id: nerm-delete-attribute-option-by-id200-response
title: DeleteAttributeOptionById200Response
pagination_label: DeleteAttributeOptionById200Response
sidebar_label: DeleteAttributeOptionById200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DeleteAttributeOptionById200Response', 'NERMDeleteAttributeOptionById200Response'] 
slug: /tools/sdk/powershell/nerm/models/delete-attribute-option-by-id200-response
tags: ['SDK', 'Software Development Kit', 'DeleteAttributeOptionById200Response', 'NERMDeleteAttributeOptionById200Response']
---


# DeleteAttributeOptionById200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Info** | **String** |  | [optional] [default to "The option {Option Value} has been deleted"]

## Examples

- Prepare the resource
```powershell
$DeleteAttributeOptionById200Response = Initialize-NERMDeleteAttributeOptionById200Response  -Info null
```

- Convert the resource to JSON
```powershell
$DeleteAttributeOptionById200Response | ConvertTo-JSON
```


[[Back to top]](#) 

