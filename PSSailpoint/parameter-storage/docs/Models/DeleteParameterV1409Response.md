---
id: delete-parameter-v1409-response
title: DeleteParameterV1409Response
pagination_label: DeleteParameterV1409Response
sidebar_label: DeleteParameterV1409Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DeleteParameterV1409Response', 'DeleteParameterV1409Response'] 
slug: /tools/sdk/powershell/parameterstorage/models/delete-parameter-v1409-response
tags: ['SDK', 'Software Development Kit', 'DeleteParameterV1409Response', 'DeleteParameterV1409Response']
---


# DeleteParameterV1409Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ErrorName** | **AnyType** | A message describing the error | [optional] 
**ErrorMessage** | **AnyType** | Description of the error | [optional] 
**TrackingId** | **String** | Unique tracking id for the error. | [optional] 

## Examples

- Prepare the resource
```powershell
$DeleteParameterV1409Response = Initialize-DeleteParameterV1409Response  -ErrorName ConflictException `
 -ErrorMessage Failed to store object `
 -TrackingId e7eab60924f64aa284175b9fa3309599
```

- Convert the resource to JSON
```powershell
$DeleteParameterV1409Response | ConvertTo-JSON
```


[[Back to top]](#) 

