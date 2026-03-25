---
id: v2026-access-requested
title: AccessRequested
pagination_label: AccessRequested
sidebar_label: AccessRequested
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessRequested', 'V2026AccessRequested'] 
slug: /tools/sdk/powershell/v2026/models/access-requested
tags: ['SDK', 'Software Development Kit', 'AccessRequested', 'V2026AccessRequested']
---


# AccessRequested

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessRequest** | [**AccessRequestResponse1**](access-request-response1) |  | [required]
**IdentityId** | **String** | the identity id | [optional] 
**EventType** | **String** | the event type | [optional] 
**DateTime** | **String** | the date of event | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequested = Initialize-V2026AccessRequested  -AccessRequest null `
 -IdentityId 8a80828f643d484f01643e14202e206f `
 -EventType AccessRequested `
 -DateTime 2019-03-08T22:37:33.901Z
```

- Convert the resource to JSON
```powershell
$AccessRequested | ConvertTo-JSON
```


[[Back to top]](#) 

