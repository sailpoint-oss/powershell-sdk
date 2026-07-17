---
id: account-action-request-dto-requester
title: AccountActionRequestDtoRequester
pagination_label: AccountActionRequestDtoRequester
sidebar_label: AccountActionRequestDtoRequester
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountActionRequestDtoRequester', 'AccountActionRequestDtoRequester'] 
slug: /tools/sdk/powershell/accountdeletionrequests/models/account-action-request-dto-requester
tags: ['SDK', 'Software Development Kit', 'AccountActionRequestDtoRequester', 'AccountActionRequestDtoRequester']
---


# AccountActionRequestDtoRequester

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountActionRequestDtoRequester = Initialize-AccountActionRequestDtoRequester  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$AccountActionRequestDtoRequester | ConvertTo-JSON
```


[[Back to top]](#) 

