---
id: v2026-approval-details
title: ApprovalDetails
pagination_label: ApprovalDetails
sidebar_label: ApprovalDetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalDetails', 'V2026ApprovalDetails'] 
slug: /tools/sdk/powershell/v2026/models/approval-details
tags: ['SDK', 'Software Development Kit', 'ApprovalDetails', 'V2026ApprovalDetails']
---


# ApprovalDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Approver** | [**ApproverDto**](approver-dto) |  | [optional] 
**ApproverComments** | **String** | Comments added by approver while rejecting or approving the account deletion request. | [optional] 
**DecisionDate** | **System.DateTime** | Decision date of approval rejected or approved. | [optional] [readonly] 
**SerialOrder** | **Int64** | SerialOrder of approval details. | [optional] 
**Status** | [**AccountRequestPhaseState**](account-request-phase-state) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalDetails = Initialize-V2026ApprovalDetails  -Approver null `
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

