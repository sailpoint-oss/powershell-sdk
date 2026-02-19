---
id: v2026-list-entitlements429-response
title: ListEntitlements429Response
pagination_label: ListEntitlements429Response
sidebar_label: ListEntitlements429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListEntitlements429Response', 'V2026ListEntitlements429Response'] 
slug: /tools/sdk/powershell/v2026/models/list-entitlements429-response
tags: ['SDK', 'Software Development Kit', 'ListEntitlements429Response', 'V2026ListEntitlements429Response']
---


# ListEntitlements429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListEntitlements429Response = Initialize-V2026ListEntitlements429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$ListEntitlements429Response | ConvertTo-JSON
```


[[Back to top]](#) 

