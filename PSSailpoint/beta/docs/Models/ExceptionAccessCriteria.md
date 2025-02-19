---
id: beta-exception-access-criteria
title: ExceptionAccessCriteria
pagination_label: ExceptionAccessCriteria
sidebar_label: ExceptionAccessCriteria
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ExceptionAccessCriteria', 'BetaExceptionAccessCriteria'] 
slug: /tools/sdk/powershell/beta/models/exception-access-criteria
tags: ['SDK', 'Software Development Kit', 'ExceptionAccessCriteria', 'BetaExceptionAccessCriteria']
---


# ExceptionAccessCriteria

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LeftCriteria** | [**ExceptionCriteria**](exception-criteria) |  | [optional] 
**RightCriteria** | [**ExceptionCriteria**](exception-criteria) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExceptionAccessCriteria = Initialize-PSSailpoint.BetaExceptionAccessCriteria  -LeftCriteria null `
 -RightCriteria null
$ExceptionAccessCriteria = @"{  "LeftCriteria": null, "RightCriteria": null }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToExceptionAccessCriteria -Json $ExceptionAccessCriteria
```


[[Back to top]](#) 

