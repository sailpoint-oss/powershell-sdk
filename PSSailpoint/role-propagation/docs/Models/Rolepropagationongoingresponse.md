---
id: rolepropagationongoingresponse
title: Rolepropagationongoingresponse
pagination_label: Rolepropagationongoingresponse
sidebar_label: Rolepropagationongoingresponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Rolepropagationongoingresponse', 'Rolepropagationongoingresponse'] 
slug: /tools/sdk/powershell/rolepropagation/models/rolepropagationongoingresponse
tags: ['SDK', 'Software Development Kit', 'Rolepropagationongoingresponse', 'Rolepropagationongoingresponse']
---


# Rolepropagationongoingresponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IsRunning** | **Boolean** | Indicates if the role propagation process is currently running on the tenant | [optional] [default to $false]
**RolePropagationDetails** | [**RolepropagationongoingresponseRolePropagationDetails**](rolepropagationongoingresponse-role-propagation-details) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Rolepropagationongoingresponse = Initialize-Rolepropagationongoingresponse  -IsRunning true `
 -RolePropagationDetails null
```

- Convert the resource to JSON
```powershell
$Rolepropagationongoingresponse | ConvertTo-JSON
```


[[Back to top]](#) 

