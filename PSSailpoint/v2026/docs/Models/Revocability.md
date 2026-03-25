---
id: v2026-revocability
title: Revocability
pagination_label: Revocability
sidebar_label: Revocability
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Revocability', 'V2026Revocability'] 
slug: /tools/sdk/powershell/v2026/models/revocability
tags: ['SDK', 'Software Development Kit', 'Revocability', 'V2026Revocability']
---


# Revocability

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalSchemes** | [**[]AccessProfileApprovalScheme**](access-profile-approval-scheme) | List describing the steps involved in approving the revocation request. | [optional] 

## Examples

- Prepare the resource
```powershell
$Revocability = Initialize-V2026Revocability  -ApprovalSchemes null
```

- Convert the resource to JSON
```powershell
$Revocability | ConvertTo-JSON
```


[[Back to top]](#) 

