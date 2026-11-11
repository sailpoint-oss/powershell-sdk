---
id: reminderescalationtenantconfigupdate
title: Reminderescalationtenantconfigupdate
pagination_label: Reminderescalationtenantconfigupdate
sidebar_label: Reminderescalationtenantconfigupdate
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Reminderescalationtenantconfigupdate', 'Reminderescalationtenantconfigupdate'] 
slug: /tools/sdk/powershell/reminderescalations/models/reminderescalationtenantconfigupdate
tags: ['SDK', 'Software Development Kit', 'Reminderescalationtenantconfigupdate', 'Reminderescalationtenantconfigupdate']
---


# Reminderescalationtenantconfigupdate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Rules** | [**Reminderescalationruleset**](reminderescalationruleset) |  | [required]
**Revision** | **Int32** | Revision from a prior read of this ruleset. | [required]

## Examples

- Prepare the resource
```powershell
$Reminderescalationtenantconfigupdate = Initialize-Reminderescalationtenantconfigupdate  -Rules null `
 -Revision 1
```

- Convert the resource to JSON
```powershell
$Reminderescalationtenantconfigupdate | ConvertTo-JSON
```


[[Back to top]](#) 

