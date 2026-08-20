---
id: dataset-aggregation-request
title: DatasetAggregationRequest
pagination_label: DatasetAggregationRequest
sidebar_label: DatasetAggregationRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DatasetAggregationRequest', 'DatasetAggregationRequest'] 
slug: /tools/sdk/powershell/sources/models/dataset-aggregation-request
tags: ['SDK', 'Software Development Kit', 'DatasetAggregationRequest', 'DatasetAggregationRequest']
---


# DatasetAggregationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Config** | **map[string]AnyType** | Connector-specific aggregation configuration. | [optional] 

## Examples

- Prepare the resource
```powershell
$DatasetAggregationRequest = Initialize-DatasetAggregationRequest  -Config {"region":"us-east-1"}
```

- Convert the resource to JSON
```powershell
$DatasetAggregationRequest | ConvertTo-JSON
```


[[Back to top]](#) 

