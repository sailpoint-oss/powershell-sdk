---
id: beta-resource-objects-request
title: ResourceObjectsRequest
pagination_label: ResourceObjectsRequest
sidebar_label: ResourceObjectsRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ResourceObjectsRequest', 'BetaResourceObjectsRequest'] 
slug: /tools/sdk/powershell/beta/models/resource-objects-request
tags: ['SDK', 'Software Development Kit', 'ResourceObjectsRequest', 'BetaResourceObjectsRequest']
---


# ResourceObjectsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectType** | **String** | The type of resource objects to iterate over. | [optional] [default to "account"]
**MaxCount** | **Int32** | The maximum number of resource objects to iterate over and return. | [optional] [default to 25]

## Examples

- Prepare the resource
```powershell
$ResourceObjectsRequest = Initialize-BetaResourceObjectsRequest  -ObjectType group `
 -MaxCount 100
```

- Convert the resource to JSON
```powershell
$ResourceObjectsRequest | ConvertTo-JSON
```


[[Back to top]](#) 

