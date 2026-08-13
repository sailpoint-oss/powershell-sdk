---
id: approval-reject-request
title: ApprovalRejectRequest
pagination_label: ApprovalRejectRequest
sidebar_label: ApprovalRejectRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalRejectRequest', 'ApprovalRejectRequest'] 
slug: /tools/sdk/powershell/approvals/models/approval-reject-request
tags: ['SDK', 'Software Development Kit', 'ApprovalRejectRequest', 'ApprovalRejectRequest']
---


# ApprovalRejectRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Comment associated with the reject request. | [optional] 
**OverrideApproverID** | **String** | Optional field for ServiceNow Administrators to specify which member of a governance group to override/reject on behalf of. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalRejectRequest = Initialize-ApprovalRejectRequest  -Comment string `
 -OverrideApproverID 12345678901234567890123456789012
```

- Convert the resource to JSON
```powershell
$ApprovalRejectRequest | ConvertTo-JSON
```


[[Back to top]](#) 

