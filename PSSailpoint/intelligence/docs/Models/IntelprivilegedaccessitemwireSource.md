---
id: intelprivilegedaccessitemwire-source
title: IntelprivilegedaccessitemwireSource
pagination_label: IntelprivilegedaccessitemwireSource
sidebar_label: IntelprivilegedaccessitemwireSource
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelprivilegedaccessitemwireSource', 'IntelprivilegedaccessitemwireSource'] 
slug: /tools/sdk/powershell/intelligence/models/intelprivilegedaccessitemwire-source
tags: ['SDK', 'Software Development Kit', 'IntelprivilegedaccessitemwireSource', 'IntelprivilegedaccessitemwireSource']
---


# IntelprivilegedaccessitemwireSource

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | Human-readable source name for the privileged access item. | [optional] 
**Id** | **String** | Source identifier for the privileged access item. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelprivilegedaccessitemwireSource = Initialize-IntelprivilegedaccessitemwireSource  -Name Example HR Source `
 -Id src-2
```

- Convert the resource to JSON
```powershell
$IntelprivilegedaccessitemwireSource | ConvertTo-JSON
```


[[Back to top]](#) 

