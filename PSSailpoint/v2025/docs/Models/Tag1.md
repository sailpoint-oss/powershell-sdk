---
id: v2025-tag1
title: Tag1
pagination_label: Tag1
sidebar_label: Tag1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Tag1', 'V2025Tag1'] 
slug: /tools/sdk/powershell/v2025/models/tag1
tags: ['SDK', 'Software Development Kit', 'Tag1', 'V2025Tag1']
---


# Tag1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The unique identifier for the tag. | [optional] 
**Name** | **String** | The display name or label for the tag. | [optional] 

## Examples

- Prepare the resource
```powershell
$Tag1 = Initialize-V2025Tag1  -Id 101 `
 -Name Confidential
```

- Convert the resource to JSON
```powershell
$Tag1 | ConvertTo-JSON
```


[[Back to top]](#) 

