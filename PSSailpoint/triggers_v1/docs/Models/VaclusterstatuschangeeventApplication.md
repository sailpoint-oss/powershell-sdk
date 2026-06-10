---
id: vaclusterstatuschangeevent-application
title: VaclusterstatuschangeeventApplication
pagination_label: VaclusterstatuschangeeventApplication
sidebar_label: VaclusterstatuschangeeventApplication
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'VaclusterstatuschangeeventApplication', 'VaclusterstatuschangeeventApplication'] 
slug: /tools/sdk/powershell/triggersv1/models/vaclusterstatuschangeevent-application
tags: ['SDK', 'Software Development Kit', 'VaclusterstatuschangeeventApplication', 'VaclusterstatuschangeeventApplication']
---


# VaclusterstatuschangeeventApplication

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The GUID of the application | [required]
**Name** | **String** | The name of the application | [required]
**Attributes** | [**map[string]AnyType**](any-type) | Custom map of attributes for a source.  This will only be populated if type is `SOURCE` and the source has a proxy. | [required]

## Examples

- Prepare the resource
```powershell
$VaclusterstatuschangeeventApplication = Initialize-VaclusterstatuschangeeventApplication  -Id 2c9180866166b5b0016167c32ef31a66 `
 -Name Production VA Cluster `
 -Attributes null
```

- Convert the resource to JSON
```powershell
$VaclusterstatuschangeeventApplication | ConvertTo-JSON
```


[[Back to top]](#) 

