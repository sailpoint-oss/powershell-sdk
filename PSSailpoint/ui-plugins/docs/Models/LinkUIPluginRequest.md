---
id: link-ui-plugin-request
title: LinkUIPluginRequest
pagination_label: LinkUIPluginRequest
sidebar_label: LinkUIPluginRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LinkUIPluginRequest', 'LinkUIPluginRequest'] 
slug: /tools/sdk/powershell/uiplugins/models/link-ui-plugin-request
tags: ['SDK', 'Software Development Kit', 'LinkUIPluginRequest', 'LinkUIPluginRequest']
---


# LinkUIPluginRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Port** | **Int32** | Local dev server port. UMS constructs `https://localhost:{port}` server-side. Clients do not send a URL. | [required]

## Examples

- Prepare the resource
```powershell
$LinkUIPluginRequest = Initialize-LinkUIPluginRequest  -Port 4200
```

- Convert the resource to JSON
```powershell
$LinkUIPluginRequest | ConvertTo-JSON
```


[[Back to top]](#) 

