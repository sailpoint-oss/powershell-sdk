---
id: responseactioncreaterequest-one-of2
title: ResponseactioncreaterequestOneOf2
pagination_label: ResponseactioncreaterequestOneOf2
sidebar_label: ResponseactioncreaterequestOneOf2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ResponseactioncreaterequestOneOf2', 'ResponseactioncreaterequestOneOf2'] 
slug: /tools/sdk/powershell/intelligence/models/responseactioncreaterequest-one-of2
tags: ['SDK', 'Software Development Kit', 'ResponseactioncreaterequestOneOf2', 'ResponseactioncreaterequestOneOf2']
---


# ResponseactioncreaterequestOneOf2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActionType** |  **Enum** [  "DEACTIVATE_AGENT" ] |  | [optional] 
**IdentityType** |  **Enum** [  "NHI" ] |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResponseactioncreaterequestOneOf2 = Initialize-ResponseactioncreaterequestOneOf2  -ActionType null `
 -IdentityType null
```

- Convert the resource to JSON
```powershell
$ResponseactioncreaterequestOneOf2 | ConvertTo-JSON
```


[[Back to top]](#) 

