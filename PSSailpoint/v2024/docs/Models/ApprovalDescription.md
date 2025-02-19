---
id: v2024-approval-description
title: ApprovalDescription
pagination_label: ApprovalDescription
sidebar_label: ApprovalDescription
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ApprovalDescription', 'V2024ApprovalDescription'] 
slug: /tools/sdk/powershell/v2024/models/approval-description
tags: ['SDK', 'Software Development Kit', 'ApprovalDescription', 'V2024ApprovalDescription']
---


# ApprovalDescription

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** | The description of what the approval is asking for | [optional] 
**Locale** | **String** | What locale the description of the approval is using | [optional] 

## Examples

- Prepare the resource
```powershell
$ApprovalDescription = Initialize-PSSailpoint.V2024ApprovalDescription  -Value This access allows viewing and editing of workflow resource `
 -Locale en_US
$ApprovalDescription = @"{  "Value": "This access allows viewing and editing of workflow resource", "Locale": "en_US" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToApprovalDescription -Json $ApprovalDescription
```


[[Back to top]](#) 

