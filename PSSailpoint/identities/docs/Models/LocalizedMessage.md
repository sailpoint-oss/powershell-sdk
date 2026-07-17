---
id: localized-message
title: LocalizedMessage
pagination_label: LocalizedMessage
sidebar_label: LocalizedMessage
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LocalizedMessage', 'LocalizedMessage'] 
slug: /tools/sdk/powershell/identities/models/localized-message
tags: ['SDK', 'Software Development Kit', 'LocalizedMessage', 'LocalizedMessage']
---


# LocalizedMessage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locale** | **String** | Message locale | [required]
**Message** | **String** | Message text | [required]

## Examples

- Prepare the resource
```powershell
$LocalizedMessage = Initialize-LocalizedMessage  -Locale An error has occurred! `
 -Message Error has occurred!
```

- Convert the resource to JSON
```powershell
$LocalizedMessage | ConvertTo-JSON
```


[[Back to top]](#) 

