---
id: sod-policy-secondary-owner-refs-inner
title: SodPolicySecondaryOwnerRefsInner
pagination_label: SodPolicySecondaryOwnerRefsInner
sidebar_label: SodPolicySecondaryOwnerRefsInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SodPolicySecondaryOwnerRefsInner', 'SodPolicySecondaryOwnerRefsInner'] 
slug: /tools/sdk/powershell/sodpolicies/models/sod-policy-secondary-owner-refs-inner
tags: ['SDK', 'Software Development Kit', 'SodPolicySecondaryOwnerRefsInner', 'SodPolicySecondaryOwnerRefsInner']
---


# SodPolicySecondaryOwnerRefsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "IDENTITY",    "GOVERNANCE_GROUP" ] | Secondary Owner Type | [optional] 
**Id** | **String** | Secondary Owner ID | [optional] 
**Name** | **String** | Secondary Owner Name | [optional] 

## Examples

- Prepare the resource
```powershell
$SodPolicySecondaryOwnerRefsInner = Initialize-SodPolicySecondaryOwnerRefsInner  -Type IDENTITY `
 -Id 2c9180a46faadee4016fb4e018c20639 `
 -Name Support
```

- Convert the resource to JSON
```powershell
$SodPolicySecondaryOwnerRefsInner | ConvertTo-JSON
```


[[Back to top]](#) 

