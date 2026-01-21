---
id: beta-role-assignment-ref
title: RoleAssignmentRef
pagination_label: RoleAssignmentRef
sidebar_label: RoleAssignmentRef
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleAssignmentRef', 'BetaRoleAssignmentRef'] 
slug: /tools/sdk/powershell/beta/models/role-assignment-ref
tags: ['SDK', 'Software Development Kit', 'RoleAssignmentRef', 'BetaRoleAssignmentRef']
---


# RoleAssignmentRef

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Assignment Id | [optional] 
**Role** | [**BaseReferenceDto1**](base-reference-dto1) |  | [optional] 
**AddedDate** | **System.DateTime** | Date that the assignment was added | [optional] 
**RemoveDate** | **System.DateTime** | Date that the assignment will be removed | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleAssignmentRef = Initialize-BetaRoleAssignmentRef  -Id 1cbb0705b38c4226b1334eadd8874086 `
 -Role null `
 -AddedDate 2025-07-11T18:45:37.098Z `
 -RemoveDate 2026-01-23T19:15Z
```

- Convert the resource to JSON
```powershell
$RoleAssignmentRef | ConvertTo-JSON
```


[[Back to top]](#) 

