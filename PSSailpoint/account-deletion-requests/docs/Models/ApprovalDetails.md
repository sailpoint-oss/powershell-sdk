---
id: approval-details
title: ApprovalDetails
pagination_label: ApprovalDetails
sidebar_label: ApprovalDetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalDetails', 'ApprovalDetails'] 
slug: /tools/sdk/powershell/accountdeletionrequests/models/approval-details
tags: ['SDK', 'Software Development Kit', 'ApprovalDetails', 'ApprovalDetails']
---


# ApprovalDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Approver** | [**ApproverDto**](approver-dto) |  | [optional] 
**ApproverComments** | **String** | Comments added by approver while rejecting or approving the account deletion request. | [optional] 
**DecisionDate** | **System.DateTime** | Decision date of approval rejected or approved. | [optional] [readonly] 
**SerialOrder** | **Int64** | SerialOrder of approval details. | [optional] 
**Status** | **AccountRequestPhaseState** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalDetails = Initialize-ApprovalDetails  -Approver null `
 -ApproverComments Approving account deletion request due to long term inactivity of account. `
 -DecisionDate 2026-01-21T11:43:22.432Z `
 -SerialOrder 12345 `
 -Status null
```

- Convert the resource to JSON
```powershell
$ApprovalDetails | ConvertTo-JSON
```


[[Back to top]](#) 

