---
id: v2026-intel-identity-access-history-body
title: IntelIdentityAccessHistoryBody
pagination_label: IntelIdentityAccessHistoryBody
sidebar_label: IntelIdentityAccessHistoryBody
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelIdentityAccessHistoryBody', 'V2026IntelIdentityAccessHistoryBody'] 
slug: /tools/sdk/powershell/v2026/models/intel-identity-access-history-body
tags: ['SDK', 'Software Development Kit', 'IntelIdentityAccessHistoryBody', 'V2026IntelIdentityAccessHistoryBody']
---


# IntelIdentityAccessHistoryBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Events** | [**[]System.Collections.Hashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | Each event is relayed from identity-history. Schema varies by event type; consumers should treat unknown fields as opaque using additionalProperties.  | [required]

## Examples

- Prepare the resource
```powershell
$IntelIdentityAccessHistoryBody = Initialize-V2026IntelIdentityAccessHistoryBody  -Events [{id=evt-001, type=LOGIN, dateTime=2024-05-01T12:00:00Z}]
```

- Convert the resource to JSON
```powershell
$IntelIdentityAccessHistoryBody | ConvertTo-JSON
```


[[Back to top]](#) 

