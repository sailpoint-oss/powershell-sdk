---
id: beta-non-employee-request-lite
title: NonEmployeeRequestLite
pagination_label: NonEmployeeRequestLite
sidebar_label: NonEmployeeRequestLite
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'NonEmployeeRequestLite', 'BetaNonEmployeeRequestLite'] 
slug: /tools/sdk/powershell/beta/models/non-employee-request-lite
tags: ['SDK', 'Software Development Kit', 'NonEmployeeRequestLite', 'BetaNonEmployeeRequestLite']
---


# NonEmployeeRequestLite

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Non-Employee request id. | [optional] 
**Requester** | [**IdentityReferenceWithId**](identity-reference-with-id) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$NonEmployeeRequestLite = Initialize-PSSailpoint.BetaNonEmployeeRequestLite  -Id ac10e21c-931c-1ef2-8193-1c51e7ff0003 `
 -Requester null
$NonEmployeeRequestLite = @"{  "Id": "ac10e21c-931c-1ef2-8193-1c51e7ff0003", "Requester": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToNonEmployeeRequestLite -Json $NonEmployeeRequestLite
```


[[Back to top]](#) 

