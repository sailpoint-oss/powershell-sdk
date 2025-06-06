---
id: v2024-role-mining-potential-role-summary-created-by
title: RoleMiningPotentialRoleSummaryCreatedBy
pagination_label: RoleMiningPotentialRoleSummaryCreatedBy
sidebar_label: RoleMiningPotentialRoleSummaryCreatedBy
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleMiningPotentialRoleSummaryCreatedBy', 'V2024RoleMiningPotentialRoleSummaryCreatedBy'] 
slug: /tools/sdk/powershell/v2024/models/role-mining-potential-role-summary-created-by
tags: ['SDK', 'Software Development Kit', 'RoleMiningPotentialRoleSummaryCreatedBy', 'V2024RoleMiningPotentialRoleSummaryCreatedBy']
---


# RoleMiningPotentialRoleSummaryCreatedBy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the creator | [optional] 
**DisplayName** | **String** | The display name of the creator | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningPotentialRoleSummaryCreatedBy = Initialize-V2024RoleMiningPotentialRoleSummaryCreatedBy  -Id 2c918090761a5aac0176215c46a62d58 `
 -DisplayName Ashley.Pierce
```

- Convert the resource to JSON
```powershell
$RoleMiningPotentialRoleSummaryCreatedBy | ConvertTo-JSON
```


[[Back to top]](#) 

