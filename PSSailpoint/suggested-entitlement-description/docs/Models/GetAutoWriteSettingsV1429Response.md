---
id: get-auto-write-settings-v1429-response
title: GetAutoWriteSettingsV1429Response
pagination_label: GetAutoWriteSettingsV1429Response
sidebar_label: GetAutoWriteSettingsV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetAutoWriteSettingsV1429Response', 'GetAutoWriteSettingsV1429Response'] 
slug: /tools/sdk/powershell/suggestedentitlementdescriptionv1/models/get-auto-write-settings-v1429-response
tags: ['SDK', 'Software Development Kit', 'GetAutoWriteSettingsV1429Response', 'GetAutoWriteSettingsV1429Response']
---


# GetAutoWriteSettingsV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetAutoWriteSettingsV1429Response = Initialize-GetAutoWriteSettingsV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$GetAutoWriteSettingsV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

