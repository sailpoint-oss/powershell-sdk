---
id: v2026-list-entitlements401-response
title: ListEntitlements401Response
pagination_label: ListEntitlements401Response
sidebar_label: ListEntitlements401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListEntitlements401Response', 'V2026ListEntitlements401Response'] 
slug: /tools/sdk/powershell/v2026/models/list-entitlements401-response
tags: ['SDK', 'Software Development Kit', 'ListEntitlements401Response', 'V2026ListEntitlements401Response']
---


# ListEntitlements401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListEntitlements401Response = Initialize-V2026ListEntitlements401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$ListEntitlements401Response | ConvertTo-JSON
```


[[Back to top]](#) 

