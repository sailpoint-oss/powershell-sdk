---
id: intelidentitylinks
title: Intelidentitylinks
pagination_label: Intelidentitylinks
sidebar_label: Intelidentitylinks
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelidentitylinks', 'Intelidentitylinks'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/intelidentitylinks
tags: ['SDK', 'Software Development Kit', 'Intelidentitylinks', 'Intelidentitylinks']
---


# Intelidentitylinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Access** | [**Intelhref**](intelhref) | Hyperlink to the Intelligence Package access document for this identity. | [required]
**AccessHistory** | [**Intelhref**](intelhref) | Hyperlink to the Intelligence Package access history document for this identity. | [required]

## Examples

- Prepare the resource
```powershell
$Intelidentitylinks = Initialize-Intelidentitylinks  -Access null `
 -AccessHistory null
```

- Convert the resource to JSON
```powershell
$Intelidentitylinks | ConvertTo-JSON
```


[[Back to top]](#) 

