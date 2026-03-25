---
id: v2026-approval-approve-request
title: ApprovalApproveRequest
pagination_label: ApprovalApproveRequest
sidebar_label: ApprovalApproveRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalApproveRequest', 'V2026ApprovalApproveRequest'] 
slug: /tools/sdk/powershell/v2026/models/approval-approve-request
tags: ['SDK', 'Software Development Kit', 'ApprovalApproveRequest', 'V2026ApprovalApproveRequest']
---


# ApprovalApproveRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AdditionalAttributes** | **map[string]String** | Additional attributes as key-value pairs that are not part of the standard schema but can be included for custom data. | [optional] 
**Comment** | **String** | Comment associated with the request. | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalApproveRequest = Initialize-V2026ApprovalApproveRequest  -AdditionalAttributes {additionalProp1=string, additionalProp2=string, additionalProp3=string} `
 -Comment comment
```

- Convert the resource to JSON
```powershell
$ApprovalApproveRequest | ConvertTo-JSON
```


[[Back to top]](#) 

