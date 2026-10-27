---
id: list-capabilities-v1429-response
title: ListCapabilitiesV1429Response
pagination_label: ListCapabilitiesV1429Response
sidebar_label: ListCapabilitiesV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListCapabilitiesV1429Response', 'ListCapabilitiesV1429Response'] 
slug: /tools/sdk/powershell/capabilities/models/list-capabilities-v1429-response
tags: ['SDK', 'Software Development Kit', 'ListCapabilitiesV1429Response', 'ListCapabilitiesV1429Response']
---


# ListCapabilitiesV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListCapabilitiesV1429Response = Initialize-ListCapabilitiesV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ListCapabilitiesV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

