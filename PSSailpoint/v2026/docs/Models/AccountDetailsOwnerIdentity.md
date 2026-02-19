---
id: v2026-account-details-owner-identity
title: AccountDetailsOwnerIdentity
pagination_label: AccountDetailsOwnerIdentity
sidebar_label: AccountDetailsOwnerIdentity
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountDetailsOwnerIdentity', 'V2026AccountDetailsOwnerIdentity'] 
slug: /tools/sdk/powershell/v2026/models/account-details-owner-identity
tags: ['SDK', 'Software Development Kit', 'AccountDetailsOwnerIdentity', 'V2026AccountDetailsOwnerIdentity']
---


# AccountDetailsOwnerIdentity

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**DtoType**](dto-type) |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountDetailsOwnerIdentity = Initialize-V2026AccountDetailsOwnerIdentity  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$AccountDetailsOwnerIdentity | ConvertTo-JSON
```


[[Back to top]](#) 

