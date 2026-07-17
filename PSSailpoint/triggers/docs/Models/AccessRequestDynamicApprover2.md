---
id: access-request-dynamic-approver2
title: AccessRequestDynamicApprover2
pagination_label: AccessRequestDynamicApprover2
sidebar_label: AccessRequestDynamicApprover2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessRequestDynamicApprover2', 'AccessRequestDynamicApprover2'] 
slug: /tools/sdk/powershell/triggers/models/access-request-dynamic-approver2
tags: ['SDK', 'Software Development Kit', 'AccessRequestDynamicApprover2', 'AccessRequestDynamicApprover2']
---


# AccessRequestDynamicApprover2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the identity to add to the approver list for the access request. | [required]
**Name** | **String** | The name of the identity to add to the approver list for the access request. | [required]
**Type** |  **Enum** [  "IDENTITY",    "GOVERNANCE_GROUP" ] | The type of object being referenced. | [required]

## Examples

- Prepare the resource
```powershell
$AccessRequestDynamicApprover2 = Initialize-AccessRequestDynamicApprover2  -Id 2c91808b6ef1d43e016efba0ce470906 `
 -Name Adam Adams `
 -Type IDENTITY
```

- Convert the resource to JSON
```powershell
$AccessRequestDynamicApprover2 | ConvertTo-JSON
```


[[Back to top]](#) 

