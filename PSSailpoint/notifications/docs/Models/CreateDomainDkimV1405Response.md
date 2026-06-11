---
id: create-domain-dkim-v1405-response
title: CreateDomainDkimV1405Response
pagination_label: CreateDomainDkimV1405Response
sidebar_label: CreateDomainDkimV1405Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateDomainDkimV1405Response', 'CreateDomainDkimV1405Response'] 
slug: /tools/sdk/powershell/notificationsv1/models/create-domain-dkim-v1405-response
tags: ['SDK', 'Software Development Kit', 'CreateDomainDkimV1405Response', 'CreateDomainDkimV1405Response']
---


# CreateDomainDkimV1405Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ErrorName** | [**AnyType**](any-type) | A message describing the error | [optional] 
**ErrorMessage** | [**AnyType**](any-type) | Description of the error | [optional] 
**TrackingId** | **String** | Unique tracking id for the error. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateDomainDkimV1405Response = Initialize-CreateDomainDkimV1405Response  -ErrorName NotSupportedException `
 -ErrorMessage Cannot consume content type `
 -TrackingId e7eab60924f64aa284175b9fa3309599
```

- Convert the resource to JSON
```powershell
$CreateDomainDkimV1405Response | ConvertTo-JSON
```


[[Back to top]](#) 

