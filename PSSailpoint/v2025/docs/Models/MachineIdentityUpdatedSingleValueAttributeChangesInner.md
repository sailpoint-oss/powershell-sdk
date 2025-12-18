---
id: v2025-machine-identity-updated-single-value-attribute-changes-inner
title: MachineIdentityUpdatedSingleValueAttributeChangesInner
pagination_label: MachineIdentityUpdatedSingleValueAttributeChangesInner
sidebar_label: MachineIdentityUpdatedSingleValueAttributeChangesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityUpdatedSingleValueAttributeChangesInner', 'V2025MachineIdentityUpdatedSingleValueAttributeChangesInner'] 
slug: /tools/sdk/powershell/v2025/models/machine-identity-updated-single-value-attribute-changes-inner
tags: ['SDK', 'Software Development Kit', 'MachineIdentityUpdatedSingleValueAttributeChangesInner', 'V2025MachineIdentityUpdatedSingleValueAttributeChangesInner']
---


# MachineIdentityUpdatedSingleValueAttributeChangesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The name of the attribute that was changed. | [required]
**OldValue** | [**MachineIdentityUpdatedSingleValueAttributeChangesInnerOldValue**](machine-identity-updated-single-value-attribute-changes-inner-old-value) |  | [required]
**NewValue** | [**MachineIdentityUpdatedSingleValueAttributeChangesInnerNewValue**](machine-identity-updated-single-value-attribute-changes-inner-new-value) |  | [required]

## Examples

- Prepare the resource
```powershell
$MachineIdentityUpdatedSingleValueAttributeChangesInner = Initialize-V2025MachineIdentityUpdatedSingleValueAttributeChangesInner  -Name displayName `
 -OldValue null `
 -NewValue null
```

- Convert the resource to JSON
```powershell
$MachineIdentityUpdatedSingleValueAttributeChangesInner | ConvertTo-JSON
```


[[Back to top]](#) 

