---
id: nermv2025-delegator-user
title: DelegatorUser
pagination_label: DelegatorUser
sidebar_label: DelegatorUser
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DelegatorUser', 'NERMV2025DelegatorUser'] 
slug: /tools/sdk/powershell/nermv2025/models/delegator-user
tags: ['SDK', 'Software Development Kit', 'DelegatorUser', 'NERMV2025DelegatorUser']
---


# DelegatorUser

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the delegator user | [optional] 
**Uid** | **String** | The uid of the delegator user | [optional] 
**Type** | **String** | The type of the delegator user | [optional] 
**Name** | **String** | The name of the delegator user | [optional] 
**Email** | **String** | The email of the delegator user | [optional] 
**Status** | **String** | The status of the delegator user | [optional] 
**Login** | **String** | The login of the delegator user | [optional] 
**LastLogin** | **System.DateTime** | The last login timestamp of the delegator user | [optional] 
**CreatedAt** | **System.DateTime** | The date-time the record created. | [optional] [readonly] 
**UpdatedAt** | **System.DateTime** | The date-time the record was last updated. | [optional] [readonly] 

## Examples

- Prepare the resource
```powershell
$DelegatorUser = Initialize-NERMV2025DelegatorUser  -Id ac4aae0b-4140-49a4-a84c-126762fd0c8f `
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
$DelegatorUser | ConvertTo-JSON
```


[[Back to top]](#) 

