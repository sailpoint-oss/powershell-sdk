---
id: beta-pre-approval-trigger-details
title: PreApprovalTriggerDetails
pagination_label: PreApprovalTriggerDetails
sidebar_label: PreApprovalTriggerDetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PreApprovalTriggerDetails', 'BetaPreApprovalTriggerDetails'] 
slug: /tools/sdk/powershell/beta/models/pre-approval-trigger-details
tags: ['SDK', 'Software Development Kit', 'PreApprovalTriggerDetails', 'BetaPreApprovalTriggerDetails']
---


# PreApprovalTriggerDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Comment** | **String** | Comment left for the pre-approval decision | [optional] 
**Reviewer** | **String** | The reviewer of the pre-approval decision | [optional] 
**Decision** |  **Enum** [  "APPROVED",    "REJECTED" ] | The decision of the pre-approval trigger | [optional] 

## Examples

- Prepare the resource
```powershell
$PreApprovalTriggerDetails = Initialize-PSSailpoint.BetaPreApprovalTriggerDetails  -Comment Access is Approved `
 -Reviewer John Doe `
 -Decision APPROVED
$PreApprovalTriggerDetails = @"{  "Comment": "Access is Approved", "Reviewer": "John Doe", "Decision": "APPROVED" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToPreApprovalTriggerDetails -Json $PreApprovalTriggerDetails
```


[[Back to top]](#) 

