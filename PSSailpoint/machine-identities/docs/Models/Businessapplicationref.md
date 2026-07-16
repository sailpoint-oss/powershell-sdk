---
id: businessapplicationref
title: Businessapplicationref
pagination_label: Businessapplicationref
sidebar_label: Businessapplicationref
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Businessapplicationref', 'Businessapplicationref'] 
slug: /tools/sdk/powershell/machineidentities/models/businessapplicationref
tags: ['SDK', 'Software Development Kit', 'Businessapplicationref', 'Businessapplicationref']
---


# Businessapplicationref

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Reference type. | [optional] 
**Id** | **String** | Business Application ID. | [optional] 
**Name** | **String** | Business Application display name. | [optional] 
**SanctionedStatus** | **Sanctionedstatus** |  | [optional] 
**CorrelationType** |  **Enum** [  "MANUAL",    "AUTOMATIC" ] | Whether the Business Application reference was manually assigned or automatically correlated. | [optional] 

## Examples

- Prepare the resource
```powershell
$Businessapplicationref = Initialize-Businessapplicationref  -Type BUSINESS_APPLICATION `
 -Id a1b2c3d4-e5f6-7890-abcd-ef1234567890 `
 -Name Cursor `
 -SanctionedStatus null `
 -CorrelationType MANUAL
```

- Convert the resource to JSON
```powershell
$Businessapplicationref | ConvertTo-JSON
```


[[Back to top]](#) 

