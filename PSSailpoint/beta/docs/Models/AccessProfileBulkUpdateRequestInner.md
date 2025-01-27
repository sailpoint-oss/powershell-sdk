---
id: beta-access-profile-bulk-update-request-inner
title: AccessProfileBulkUpdateRequestInner
pagination_label: AccessProfileBulkUpdateRequestInner
sidebar_label: AccessProfileBulkUpdateRequestInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessProfileBulkUpdateRequestInner'] 
slug: /tools/sdk/powershell/beta/models/access-profile-bulk-update-request-inner
tags: ['SDK', 'Software Development Kit', 'AccessProfileBulkUpdateRequestInner']
---


# AccessProfileBulkUpdateRequestInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** |  Pointer to **String** | Access Profile ID. | [optional] 
**Requestable** |  Pointer to **Boolean** | Access Profile is requestable or not. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileBulkUpdateRequestInner = Initialize-PSSailpoint.BetaAccessProfileBulkUpdateRequestInner  -Id 464ae7bf-791e-49fd-b746-06a2e4a8 `
 -Requestable false
```

- Convert the resource to JSON
```powershell
$AccessProfileBulkUpdateRequestInner | ConvertTo-JSON
```


[[Back to top]](#) 

