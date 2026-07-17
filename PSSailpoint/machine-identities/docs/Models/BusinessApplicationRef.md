---
id: business-application-ref
title: BusinessApplicationRef
pagination_label: BusinessApplicationRef
sidebar_label: BusinessApplicationRef
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'BusinessApplicationRef', 'BusinessApplicationRef'] 
slug: /tools/sdk/powershell/machineidentities/models/business-application-ref
tags: ['SDK', 'Software Development Kit', 'BusinessApplicationRef', 'BusinessApplicationRef']
---


# BusinessApplicationRef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **String** | Reference type. | [optional] 
**Id** | **String** | Business Application ID. | [optional] 
**Name** | **String** | Business Application display name. | [optional] 
**SanctionedStatus** | **SanctionedStatus** |  | [optional] 
**CorrelationType** |  **Enum** [  "MANUAL",    "AUTOMATIC" ] | Whether the Business Application reference was manually assigned or automatically correlated. | [optional] 

## Examples

- Prepare the resource
```powershell
$BusinessApplicationRef = Initialize-BusinessApplicationRef  -Type BUSINESS_APPLICATION `
 -Id a1b2c3d4-e5f6-7890-abcd-ef1234567890 `
 -Name Cursor `
 -SanctionedStatus null `
 -CorrelationType MANUAL
```

- Convert the resource to JSON
```powershell
$BusinessApplicationRef | ConvertTo-JSON
```


[[Back to top]](#) 

