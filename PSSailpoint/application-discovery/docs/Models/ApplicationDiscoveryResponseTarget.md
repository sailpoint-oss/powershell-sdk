---
id: application-discovery-response-target
title: ApplicationDiscoveryResponseTarget
pagination_label: ApplicationDiscoveryResponseTarget
sidebar_label: ApplicationDiscoveryResponseTarget
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApplicationDiscoveryResponseTarget', 'ApplicationDiscoveryResponseTarget'] 
slug: /tools/sdk/powershell/applicationdiscovery/models/application-discovery-response-target
tags: ['SDK', 'Software Development Kit', 'ApplicationDiscoveryResponseTarget', 'ApplicationDiscoveryResponseTarget']
---


# ApplicationDiscoveryResponseTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationDiscoveryResponseTarget = Initialize-ApplicationDiscoveryResponseTarget  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$ApplicationDiscoveryResponseTarget | ConvertTo-JSON
```


[[Back to top]](#) 

