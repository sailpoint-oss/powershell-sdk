---
id: user-entitlement-v2-source
title: UserEntitlementV2Source
pagination_label: UserEntitlementV2Source
sidebar_label: UserEntitlementV2Source
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UserEntitlementV2Source', 'UserEntitlementV2Source'] 
slug: /tools/sdk/powershell/machineidentities/models/user-entitlement-v2-source
tags: ['SDK', 'Software Development Kit', 'UserEntitlementV2Source', 'UserEntitlementV2Source']
---


# UserEntitlementV2Source

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$UserEntitlementV2Source = Initialize-UserEntitlementV2Source  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$UserEntitlementV2Source | ConvertTo-JSON
```


[[Back to top]](#) 

