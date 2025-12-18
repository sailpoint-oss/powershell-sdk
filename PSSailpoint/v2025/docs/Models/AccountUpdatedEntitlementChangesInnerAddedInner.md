---
id: v2025-account-updated-entitlement-changes-inner-added-inner
title: AccountUpdatedEntitlementChangesInnerAddedInner
pagination_label: AccountUpdatedEntitlementChangesInnerAddedInner
sidebar_label: AccountUpdatedEntitlementChangesInnerAddedInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountUpdatedEntitlementChangesInnerAddedInner', 'V2025AccountUpdatedEntitlementChangesInnerAddedInner'] 
slug: /tools/sdk/powershell/v2025/models/account-updated-entitlement-changes-inner-added-inner
tags: ['SDK', 'Software Development Kit', 'AccountUpdatedEntitlementChangesInnerAddedInner', 'V2025AccountUpdatedEntitlementChangesInnerAddedInner']
---


# AccountUpdatedEntitlementChangesInnerAddedInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique identifier of the entitlement. | [optional] 
**Name** | **String** | The name of the entitlement. | [optional] 
**Owner** | [**AccountUpdatedEntitlementChangesInnerAddedInnerOwner**](account-updated-entitlement-changes-inner-added-inner-owner) |  | [optional] 
**Value** | **String** | The value of the entitlement. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountUpdatedEntitlementChangesInnerAddedInner = Initialize-V2025AccountUpdatedEntitlementChangesInnerAddedInner  -Id 2c9180835d2e5168015d32f890ca1581 `
 -Name Admin `
 -Owner null `
 -Value Admin
```

- Convert the resource to JSON
```powershell
$AccountUpdatedEntitlementChangesInnerAddedInner | ConvertTo-JSON
```


[[Back to top]](#) 

