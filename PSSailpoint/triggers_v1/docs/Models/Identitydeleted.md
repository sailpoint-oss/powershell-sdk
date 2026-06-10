---
id: identitydeleted
title: Identitydeleted
pagination_label: Identitydeleted
sidebar_label: Identitydeleted
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Identitydeleted', 'Identitydeleted'] 
slug: /tools/sdk/powershell/triggersv1/models/identitydeleted
tags: ['SDK', 'Software Development Kit', 'Identitydeleted', 'Identitydeleted']
---


# Identitydeleted

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**IdentitydeletedIdentity**](identitydeleted-identity) |  | [required]
**Attributes** | [**map[string]AnyType**](any-type) | The attributes assigned to the identity. Attributes are determined by the identity profile. | [required]

## Examples

- Prepare the resource
```powershell
$Identitydeleted = Initialize-Identitydeleted  -Identity null `
 -Attributes {"firstname":"John"}
```

- Convert the resource to JSON
```powershell
$Identitydeleted | ConvertTo-JSON
```


[[Back to top]](#) 

