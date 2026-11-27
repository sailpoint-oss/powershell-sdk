---
id: responseactioncreaterequest-one-of1
title: ResponseactioncreaterequestOneOf1
pagination_label: ResponseactioncreaterequestOneOf1
sidebar_label: ResponseactioncreaterequestOneOf1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ResponseactioncreaterequestOneOf1', 'ResponseactioncreaterequestOneOf1'] 
slug: /tools/sdk/powershell/intelligence/models/responseactioncreaterequest-one-of1
tags: ['SDK', 'Software Development Kit', 'ResponseactioncreaterequestOneOf1', 'ResponseactioncreaterequestOneOf1']
---


# ResponseactioncreaterequestOneOf1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActionType** |  **Enum** [  "DISABLE_ACCOUNT" ] |  | [optional] 
**IdentityType** |  **Enum** [  "HUMAN" ] |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResponseactioncreaterequestOneOf1 = Initialize-ResponseactioncreaterequestOneOf1  -ActionType null `
 -IdentityType null
```

- Convert the resource to JSON
```powershell
$ResponseactioncreaterequestOneOf1 | ConvertTo-JSON
```


[[Back to top]](#) 

