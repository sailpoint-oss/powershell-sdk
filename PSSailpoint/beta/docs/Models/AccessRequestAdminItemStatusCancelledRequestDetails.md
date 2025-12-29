---
id: beta-access-request-admin-item-status-cancelled-request-details
title: AccessRequestAdminItemStatusCancelledRequestDetails
pagination_label: AccessRequestAdminItemStatusCancelledRequestDetails
sidebar_label: AccessRequestAdminItemStatusCancelledRequestDetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessRequestAdminItemStatusCancelledRequestDetails', 'BetaAccessRequestAdminItemStatusCancelledRequestDetails'] 
slug: /tools/sdk/powershell/beta/models/access-request-admin-item-status-cancelled-request-details
tags: ['SDK', 'Software Development Kit', 'AccessRequestAdminItemStatusCancelledRequestDetails', 'BetaAccessRequestAdminItemStatusCancelledRequestDetails']
---


# AccessRequestAdminItemStatusCancelledRequestDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Comment made by the owner when cancelling the associated request. | [optional] 
**Owner** | [**OwnerDto**](owner-dto) |  | [optional] 
**Modified** | **System.DateTime** | Date comment was added by the owner when cancelling the associated request. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestAdminItemStatusCancelledRequestDetails = Initialize-BetaAccessRequestAdminItemStatusCancelledRequestDetails  -Comment This request must be cancelled. `
 -Owner null `
 -Modified 2019-12-20T09:17:12.192Z
```

- Convert the resource to JSON
```powershell
$AccessRequestAdminItemStatusCancelledRequestDetails | ConvertTo-JSON
```


[[Back to top]](#) 

