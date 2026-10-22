---
id: identity-v2-lifecycle-state
title: IdentityV2LifecycleState
pagination_label: IdentityV2LifecycleState
sidebar_label: IdentityV2LifecycleState
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityV2LifecycleState', 'IdentityV2LifecycleState'] 
slug: /tools/sdk/powershell/identities/models/identity-v2-lifecycle-state
tags: ['SDK', 'Software Development Kit', 'IdentityV2LifecycleState', 'IdentityV2LifecycleState']
---


# IdentityV2LifecycleState

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**StateName** | **String** | The name of the lifecycle state | [required]
**ManuallyUpdated** | **Boolean** | Whether the lifecycle state has been manually or automatically set | [required]

## Examples

- Prepare the resource
```powershell
$IdentityV2LifecycleState = Initialize-IdentityV2LifecycleState  -StateName active `
 -ManuallyUpdated true
```

- Convert the resource to JSON
```powershell
$IdentityV2LifecycleState | ConvertTo-JSON
```


[[Back to top]](#) 

