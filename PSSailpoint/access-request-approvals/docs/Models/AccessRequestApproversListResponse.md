---
id: access-request-approvers-list-response
title: AccessRequestApproversListResponse
pagination_label: AccessRequestApproversListResponse
sidebar_label: AccessRequestApproversListResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessRequestApproversListResponse', 'AccessRequestApproversListResponse'] 
slug: /tools/sdk/powershell/accessrequestapprovals/models/access-request-approvers-list-response
tags: ['SDK', 'Software Development Kit', 'AccessRequestApproversListResponse', 'AccessRequestApproversListResponse']
---


# AccessRequestApproversListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Approver id. | [optional] 
**Email** | **String** | Email of the approver. | [optional] 
**Name** | **String** | Name of the approver. | [optional] 
**ApprovalId** | **String** | Id of the approval item. | [optional] 
**Type** | **String** | Type of the object returned. In this case, the value for this field will always Identity. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessRequestApproversListResponse = Initialize-AccessRequestApproversListResponse  -Id id12345 `
 -Email jdoe@sailpoint.com `
 -Name John Doe `
 -ApprovalId ap12345 `
 -Type Identity
```

- Convert the resource to JSON
```powershell
$AccessRequestApproversListResponse | ConvertTo-JSON
```


[[Back to top]](#) 

