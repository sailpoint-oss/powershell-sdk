---
id: v2025-account-updated-single-value-attribute-changes-inner
title: AccountUpdatedSingleValueAttributeChangesInner
pagination_label: AccountUpdatedSingleValueAttributeChangesInner
sidebar_label: AccountUpdatedSingleValueAttributeChangesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountUpdatedSingleValueAttributeChangesInner', 'V2025AccountUpdatedSingleValueAttributeChangesInner'] 
slug: /tools/sdk/powershell/v2025/models/account-updated-single-value-attribute-changes-inner
tags: ['SDK', 'Software Development Kit', 'AccountUpdatedSingleValueAttributeChangesInner', 'V2025AccountUpdatedSingleValueAttributeChangesInner']
---


# AccountUpdatedSingleValueAttributeChangesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the attribute that was changed. | [required]
**OldValue** | [**AccountUpdatedSingleValueAttributeChangesInnerOldValue**](account-updated-single-value-attribute-changes-inner-old-value) |  | [required]
**NewValue** | [**AccountUpdatedSingleValueAttributeChangesInnerNewValue**](account-updated-single-value-attribute-changes-inner-new-value) |  | [required]

## Examples

- Prepare the resource
```powershell
$AccountUpdatedSingleValueAttributeChangesInner = Initialize-V2025AccountUpdatedSingleValueAttributeChangesInner  -Name displayName `
 -OldValue null `
 -NewValue null
```

- Convert the resource to JSON
```powershell
$AccountUpdatedSingleValueAttributeChangesInner | ConvertTo-JSON
```


[[Back to top]](#) 

