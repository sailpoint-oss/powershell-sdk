---
id: multi-host-integrations-password-policies-inner
title: MultiHostIntegrationsPasswordPoliciesInner
pagination_label: MultiHostIntegrationsPasswordPoliciesInner
sidebar_label: MultiHostIntegrationsPasswordPoliciesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MultiHostIntegrationsPasswordPoliciesInner', 'MultiHostIntegrationsPasswordPoliciesInner'] 
slug: /tools/sdk/powershell/multihostintegration/models/multi-host-integrations-password-policies-inner
tags: ['SDK', 'Software Development Kit', 'MultiHostIntegrationsPasswordPoliciesInner', 'MultiHostIntegrationsPasswordPoliciesInner']
---


# MultiHostIntegrationsPasswordPoliciesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "PASSWORD_POLICY" ] | Type of object being referenced. | [optional] 
**Id** | **String** | Policy ID. | [optional] 
**Name** | **String** | Policy's human-readable display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiHostIntegrationsPasswordPoliciesInner = Initialize-MultiHostIntegrationsPasswordPoliciesInner  -Type PASSWORD_POLICY `
 -Id 2c91808568c529c60168cca6f90c1777 `
 -Name My Password Policy
```

- Convert the resource to JSON
```powershell
$MultiHostIntegrationsPasswordPoliciesInner | ConvertTo-JSON
```


[[Back to top]](#) 

