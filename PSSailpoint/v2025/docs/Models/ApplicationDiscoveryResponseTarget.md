---
id: v2025-application-discovery-response-target
title: ApplicationDiscoveryResponseTarget
pagination_label: ApplicationDiscoveryResponseTarget
sidebar_label: ApplicationDiscoveryResponseTarget
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApplicationDiscoveryResponseTarget', 'V2025ApplicationDiscoveryResponseTarget'] 
slug: /tools/sdk/powershell/v2025/models/application-discovery-response-target
tags: ['SDK', 'Software Development Kit', 'ApplicationDiscoveryResponseTarget', 'V2025ApplicationDiscoveryResponseTarget']
---


# ApplicationDiscoveryResponseTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**DtoType**](dto-type) |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$ApplicationDiscoveryResponseTarget = Initialize-V2025ApplicationDiscoveryResponseTarget  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$ApplicationDiscoveryResponseTarget | ConvertTo-JSON
```


[[Back to top]](#) 

