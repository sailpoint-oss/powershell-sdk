---
id: create-ui-plugin-asset-bundle-v1-request
title: CreateUiPluginAssetBundleV1Request
pagination_label: CreateUiPluginAssetBundleV1Request
sidebar_label: CreateUiPluginAssetBundleV1Request
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateUiPluginAssetBundleV1Request', 'CreateUiPluginAssetBundleV1Request'] 
slug: /tools/sdk/powershell/uiplugins/models/create-ui-plugin-asset-bundle-v1-request
tags: ['SDK', 'Software Development Kit', 'CreateUiPluginAssetBundleV1Request', 'CreateUiPluginAssetBundleV1Request']
---


# CreateUiPluginAssetBundleV1Request

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **[]System.IO.FileInfo** | Repeatable form field. Send one part per file; use the part filename for the bundle-relative path (e.g. `assets/app.js`). | [required]

## Examples

- Prepare the resource
```powershell
$CreateUiPluginAssetBundleV1Request = Initialize-CreateUiPluginAssetBundleV1Request  -File null
```

- Convert the resource to JSON
```powershell
$CreateUiPluginAssetBundleV1Request | ConvertTo-JSON
```


[[Back to top]](#) 

