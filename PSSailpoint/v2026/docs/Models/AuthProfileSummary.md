---
id: v2026-auth-profile-summary
title: AuthProfileSummary
pagination_label: AuthProfileSummary
sidebar_label: AuthProfileSummary
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AuthProfileSummary', 'V2026AuthProfileSummary'] 
slug: /tools/sdk/powershell/v2026/models/auth-profile-summary
tags: ['SDK', 'Software Development Kit', 'AuthProfileSummary', 'V2026AuthProfileSummary']
---


# AuthProfileSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Tenant** | **String** | Tenant name. | [optional] 
**Id** | **String** | Identity ID. | [optional] 

## Examples

- Prepare the resource
```powershell
$AuthProfileSummary = Initialize-V2026AuthProfileSummary  -Tenant test-tenant `
 -Id 2c91808458ae7a4f0158b1bbf8af0628
```

- Convert the resource to JSON
```powershell
$AuthProfileSummary | ConvertTo-JSON
```


[[Back to top]](#) 

