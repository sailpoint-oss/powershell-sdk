---
id: account-updated-entitlement-changes-inner-added-inner-owner
title: AccountUpdatedEntitlementChangesInnerAddedInnerOwner
pagination_label: AccountUpdatedEntitlementChangesInnerAddedInnerOwner
sidebar_label: AccountUpdatedEntitlementChangesInnerAddedInnerOwner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountUpdatedEntitlementChangesInnerAddedInnerOwner', 'AccountUpdatedEntitlementChangesInnerAddedInnerOwner'] 
slug: /tools/sdk/powershell/triggers/models/account-updated-entitlement-changes-inner-added-inner-owner
tags: ['SDK', 'Software Development Kit', 'AccountUpdatedEntitlementChangesInnerAddedInnerOwner', 'AccountUpdatedEntitlementChangesInnerAddedInnerOwner']
---


# AccountUpdatedEntitlementChangesInnerAddedInnerOwner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique identifier of the owner. | [optional] 
**Name** | **String** | The name of the owner. | [optional] 
**Type** | **String** | The type of the owner. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountUpdatedEntitlementChangesInnerAddedInnerOwner = Initialize-AccountUpdatedEntitlementChangesInnerAddedInnerOwner  -Id 2c9180835d2e5168015d32f890ca1581 `
 -Name Owner Name `
 -Type Primary
```

- Convert the resource to JSON
```powershell
$AccountUpdatedEntitlementChangesInnerAddedInnerOwner | ConvertTo-JSON
```


[[Back to top]](#) 

