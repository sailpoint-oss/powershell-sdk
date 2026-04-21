---
id: nermv2025-delegate-user
title: DelegateUser
pagination_label: DelegateUser
sidebar_label: DelegateUser
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DelegateUser', 'NERMV2025DelegateUser'] 
slug: /tools/sdk/powershell/nermv2025/models/delegate-user
tags: ['SDK', 'Software Development Kit', 'DelegateUser', 'NERMV2025DelegateUser']
---


# DelegateUser

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the delegate user | [optional] 
**Uid** | **String** | The uid of the delegate user | [optional] 
**Type** | **String** | The type of the delegate user | [optional] 
**Name** | **String** | The name of the delegate user | [optional] 
**Email** | **String** | The email of the delegate user | [optional] 
**Status** | **String** | The status of the delegate user | [optional] 
**Login** | **String** | The login of the delegate user | [optional] 
**LastLogin** | **System.DateTime** | The last login timestamp of the delegate user | [optional] 
**CreatedAt** | **System.DateTime** | The date-time the record created. | [optional] [readonly] 
**UpdatedAt** | **System.DateTime** | The date-time the record was last updated. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$DelegateUser = Initialize-NERMV2025DelegateUser  -Id ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -Uid ac4aae0b-4140-49a4-a84c-126762fd0c8f `
 -Type NeprofileUser `
 -Name Jane Doe `
 -Email jane@example.com `
 -Status active `
 -Login jane.doe `
 -LastLogin 2024-06-01T12:34:56Z `
 -CreatedAt null `
 -UpdatedAt null
```

- Convert the resource to JSON
```powershell
$DelegateUser | ConvertTo-JSON
```


[[Back to top]](#) 

