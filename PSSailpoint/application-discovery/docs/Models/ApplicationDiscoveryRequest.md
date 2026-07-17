---
id: application-discovery-request
title: ApplicationDiscoveryRequest
pagination_label: ApplicationDiscoveryRequest
sidebar_label: ApplicationDiscoveryRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApplicationDiscoveryRequest', 'ApplicationDiscoveryRequest'] 
slug: /tools/sdk/powershell/applicationdiscovery/models/application-discovery-request
tags: ['SDK', 'Software Development Kit', 'ApplicationDiscoveryRequest', 'ApplicationDiscoveryRequest']
---


# ApplicationDiscoveryRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DatasetIds** | **[]String** | List of dataset Ids to discover applications | [required]

## Examples

- Prepare the resource
```powershell
$ApplicationDiscoveryRequest = Initialize-ApplicationDiscoveryRequest  -DatasetIds null
```

- Convert the resource to JSON
```powershell
$ApplicationDiscoveryRequest | ConvertTo-JSON
```


[[Back to top]](#) 

