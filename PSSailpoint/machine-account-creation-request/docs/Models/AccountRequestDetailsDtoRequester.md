---
id: account-request-details-dto-requester
title: AccountRequestDetailsDtoRequester
pagination_label: AccountRequestDetailsDtoRequester
sidebar_label: AccountRequestDetailsDtoRequester
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountRequestDetailsDtoRequester', 'AccountRequestDetailsDtoRequester'] 
slug: /tools/sdk/powershell/machineaccountcreationrequest/models/account-request-details-dto-requester
tags: ['SDK', 'Software Development Kit', 'AccountRequestDetailsDtoRequester', 'AccountRequestDetailsDtoRequester']
---


# AccountRequestDetailsDtoRequester

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **DtoType** |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountRequestDetailsDtoRequester = Initialize-AccountRequestDetailsDtoRequester  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$AccountRequestDetailsDtoRequester | ConvertTo-JSON
```


[[Back to top]](#) 

