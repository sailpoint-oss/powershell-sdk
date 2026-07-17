---
id: account-attributes-changed-changes-inner
title: AccountAttributesChangedChangesInner
pagination_label: AccountAttributesChangedChangesInner
sidebar_label: AccountAttributesChangedChangesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountAttributesChangedChangesInner', 'AccountAttributesChangedChangesInner'] 
slug: /tools/sdk/powershell/triggers/models/account-attributes-changed-changes-inner
tags: ['SDK', 'Software Development Kit', 'AccountAttributesChangedChangesInner', 'AccountAttributesChangedChangesInner']
---


# AccountAttributesChangedChangesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | The name of the attribute. | [required]
**OldValue** | [**AccountAttributesChangedChangesInnerOldValue**](account-attributes-changed-changes-inner-old-value) |  | [required]
**NewValue** | [**AccountAttributesChangedChangesInnerNewValue**](account-attributes-changed-changes-inner-new-value) |  | [required]

## Examples

- Prepare the resource
```powershell
$AccountAttributesChangedChangesInner = Initialize-AccountAttributesChangedChangesInner  -Attribute sn `
 -OldValue null `
 -NewValue null
```

- Convert the resource to JSON
```powershell
$AccountAttributesChangedChangesInner | ConvertTo-JSON
```


[[Back to top]](#) 

