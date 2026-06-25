---
id: v2026-list-entitlement-connections412-response
title: ListEntitlementConnections412Response
pagination_label: ListEntitlementConnections412Response
sidebar_label: ListEntitlementConnections412Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ListEntitlementConnections412Response', 'V2026ListEntitlementConnections412Response'] 
slug: /tools/sdk/powershell/v2026/models/list-entitlement-connections412-response
tags: ['SDK', 'Software Development Kit', 'ListEntitlementConnections412Response', 'V2026ListEntitlementConnections412Response']
---


# ListEntitlementConnections412Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$ListEntitlementConnections412Response = Initialize-V2026ListEntitlementConnections412Response  -Message  API/Feature not enabled for your organization.
```

- Convert the resource to JSON
```powershell
$ListEntitlementConnections412Response | ConvertTo-JSON
```


[[Back to top]](#) 

