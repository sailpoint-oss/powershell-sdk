---
id: plugin-document-headers
title: PluginDocumentHeaders
pagination_label: PluginDocumentHeaders
sidebar_label: PluginDocumentHeaders
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PluginDocumentHeaders', 'PluginDocumentHeaders'] 
slug: /tools/sdk/powershell/uiplugins/models/plugin-document-headers
tags: ['SDK', 'Software Development Kit', 'PluginDocumentHeaders', 'PluginDocumentHeaders']
---


# PluginDocumentHeaders

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContentSecurityPolicy** | **String** | Effective `Content-Security-Policy` header value for plugin documents. | [required]
**PermissionsPolicy** | **String** | Effective `Permissions-Policy` header value for plugin documents. Features are denied by default unless the plugin opts in. | [required]

## Examples

- Prepare the resource
```powershell
$PluginDocumentHeaders = Initialize-PluginDocumentHeaders  -ContentSecurityPolicy default-src 'none'; script-src 'self'; style-src 'self' 'unsafe-inline'; img-src 'self'; font-src 'self'; connect-src 'self' `
 -PermissionsPolicy accelerometer=(), camera=(), geolocation=(), microphone=()
```

- Convert the resource to JSON
```powershell
$PluginDocumentHeaders | ConvertTo-JSON
```


[[Back to top]](#) 

