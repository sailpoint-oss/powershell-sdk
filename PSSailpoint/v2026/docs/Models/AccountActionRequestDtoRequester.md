---
id: v2026-account-action-request-dto-requester
title: AccountActionRequestDtoRequester
pagination_label: AccountActionRequestDtoRequester
sidebar_label: AccountActionRequestDtoRequester
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountActionRequestDtoRequester', 'V2026AccountActionRequestDtoRequester'] 
slug: /tools/sdk/powershell/v2026/models/account-action-request-dto-requester
tags: ['SDK', 'Software Development Kit', 'AccountActionRequestDtoRequester', 'V2026AccountActionRequestDtoRequester']
---


# AccountActionRequestDtoRequester

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**DtoType**](dto-type) |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountActionRequestDtoRequester = Initialize-V2026AccountActionRequestDtoRequester  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$AccountActionRequestDtoRequester | ConvertTo-JSON
```


[[Back to top]](#) 

