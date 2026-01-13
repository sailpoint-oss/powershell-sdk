---
id: beta-patch-role-mining-potential-role-request-inner
title: PatchRoleMiningPotentialRoleRequestInner
pagination_label: PatchRoleMiningPotentialRoleRequestInner
sidebar_label: PatchRoleMiningPotentialRoleRequestInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PatchRoleMiningPotentialRoleRequestInner', 'BetaPatchRoleMiningPotentialRoleRequestInner'] 
slug: /tools/sdk/powershell/beta/models/patch-role-mining-potential-role-request-inner
tags: ['SDK', 'Software Development Kit', 'PatchRoleMiningPotentialRoleRequestInner', 'BetaPatchRoleMiningPotentialRoleRequestInner']
---


# PatchRoleMiningPotentialRoleRequestInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Op** |  **Enum** [  "remove",    "replace" ] | The operation to be performed | [optional] 
**Path** | **String** | A string JSON Pointer representing the target path to an element to be affected by the operation | [required]
**Value** | [**UpdateMultiHostSourcesRequestInnerValue**](update-multi-host-sources-request-inner-value) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PatchRoleMiningPotentialRoleRequestInner = Initialize-BetaPatchRoleMiningPotentialRoleRequestInner  -Op replace `
 -Path /description `
 -Value null
```

- Convert the resource to JSON
```powershell
$PatchRoleMiningPotentialRoleRequestInner | ConvertTo-JSON
```


[[Back to top]](#) 

