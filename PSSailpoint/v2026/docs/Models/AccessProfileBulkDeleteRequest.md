---
id: v2026-access-profile-bulk-delete-request
title: AccessProfileBulkDeleteRequest
pagination_label: AccessProfileBulkDeleteRequest
sidebar_label: AccessProfileBulkDeleteRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessProfileBulkDeleteRequest', 'V2026AccessProfileBulkDeleteRequest'] 
slug: /tools/sdk/powershell/v2026/models/access-profile-bulk-delete-request
tags: ['SDK', 'Software Development Kit', 'AccessProfileBulkDeleteRequest', 'V2026AccessProfileBulkDeleteRequest']
---


# AccessProfileBulkDeleteRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessProfileIds** | **[]String** | List of IDs of Access Profiles to be deleted. | [optional] 
**BestEffortOnly** | **Boolean** | If **true**, silently skip over any of the specified Access Profiles if they cannot be deleted because they are in use. If **false**, no deletions will be attempted if any of the Access Profiles are in use. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileBulkDeleteRequest = Initialize-V2026AccessProfileBulkDeleteRequest  -AccessProfileIds [2c9180847812e0b1017817051919ecca, 2c9180887812e0b201781e129f151816] `
 -BestEffortOnly true
```

- Convert the resource to JSON
```powershell
$AccessProfileBulkDeleteRequest | ConvertTo-JSON
```


[[Back to top]](#) 

