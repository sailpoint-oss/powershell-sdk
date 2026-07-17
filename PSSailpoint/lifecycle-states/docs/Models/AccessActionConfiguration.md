---
id: access-action-configuration
title: AccessActionConfiguration
pagination_label: AccessActionConfiguration
sidebar_label: AccessActionConfiguration
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessActionConfiguration', 'AccessActionConfiguration'] 
slug: /tools/sdk/powershell/lifecyclestates/models/access-action-configuration
tags: ['SDK', 'Software Development Kit', 'AccessActionConfiguration', 'AccessActionConfiguration']
---


# AccessActionConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**RemoveAllAccessEnabled** | **Boolean** | If true, then all accesses are marked for removal. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$AccessActionConfiguration = Initialize-AccessActionConfiguration  -RemoveAllAccessEnabled true
```

- Convert the resource to JSON
```powershell
$AccessActionConfiguration | ConvertTo-JSON
```


[[Back to top]](#) 

