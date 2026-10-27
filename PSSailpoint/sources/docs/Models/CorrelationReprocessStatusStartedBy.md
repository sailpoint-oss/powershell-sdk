---
id: correlation-reprocess-status-started-by
title: CorrelationReprocessStatusStartedBy
pagination_label: CorrelationReprocessStatusStartedBy
sidebar_label: CorrelationReprocessStatusStartedBy
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CorrelationReprocessStatusStartedBy', 'CorrelationReprocessStatusStartedBy'] 
slug: /tools/sdk/powershell/sources/models/correlation-reprocess-status-started-by
tags: ['SDK', 'Software Development Kit', 'CorrelationReprocessStatusStartedBy', 'CorrelationReprocessStatusStartedBy']
---


# CorrelationReprocessStatusStartedBy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$CorrelationReprocessStatusStartedBy = Initialize-CorrelationReprocessStatusStartedBy  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$CorrelationReprocessStatusStartedBy | ConvertTo-JSON
```


[[Back to top]](#) 

