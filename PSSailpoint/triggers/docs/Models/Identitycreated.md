---
id: identitycreated
title: Identitycreated
pagination_label: Identitycreated
sidebar_label: Identitycreated
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Identitycreated', 'Identitycreated'] 
slug: /tools/sdk/powershell/triggersv1/models/identitycreated
tags: ['SDK', 'Software Development Kit', 'Identitycreated', 'Identitycreated']
---


# Identitycreated

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Identity** | [**IdentitycreatedIdentity**](identitycreated-identity) |  | [required]
**Attributes** | [**map[string]AnyType**](any-type) | The attributes assigned to the identity. Attributes are determined by the identity profile. | [required]

## Examples

- Prepare the resource
```powershell
$Identitycreated = Initialize-Identitycreated  -Identity null `
 -Attributes {"firstname":"John"}
```

- Convert the resource to JSON
```powershell
$Identitycreated | ConvertTo-JSON
```


[[Back to top]](#) 

