---
id: v2026-requestability-for-role
title: RequestabilityForRole
pagination_label: RequestabilityForRole
sidebar_label: RequestabilityForRole
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RequestabilityForRole', 'V2026RequestabilityForRole'] 
slug: /tools/sdk/powershell/v2026/models/requestability-for-role
tags: ['SDK', 'Software Development Kit', 'RequestabilityForRole', 'V2026RequestabilityForRole']
---


# RequestabilityForRole

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CommentsRequired** | **Boolean** | Whether the requester of the containing object must provide comments justifying the request | [optional] [default to $false]
**DenialCommentsRequired** | **Boolean** | Whether an approver must provide comments when denying the request | [optional] [default to $false]
**ReauthorizationRequired** | **Boolean** | Indicates whether reauthorization is required for the request. | [optional] [default to $false]
**RequireEndDate** | **Boolean** | Indicates whether the requester of the containing object must provide access end date. | [optional] [default to $false]
**MaxPermittedAccessDuration** | [**AccessDuration**](access-duration) |  | [optional] 
**ApprovalSchemes** | [**[]ApprovalSchemeForRole**](approval-scheme-for-role) | List describing the steps in approving the request | [optional] 
**DimensionSchema** | [**DimensionSchema**](dimension-schema) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RequestabilityForRole = Initialize-V2026RequestabilityForRole  -CommentsRequired true `
 -DenialCommentsRequired true `
 -ReauthorizationRequired true `
 -RequireEndDate true `
 -MaxPermittedAccessDuration null `
 -ApprovalSchemes null `
 -DimensionSchema null
```

- Convert the resource to JSON
```powershell
$RequestabilityForRole | ConvertTo-JSON
```


[[Back to top]](#) 

