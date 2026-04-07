---
id: v2026-account-request-details-dto-requester
title: AccountRequestDetailsDtoRequester
pagination_label: AccountRequestDetailsDtoRequester
sidebar_label: AccountRequestDetailsDtoRequester
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountRequestDetailsDtoRequester', 'V2026AccountRequestDetailsDtoRequester'] 
slug: /tools/sdk/powershell/v2026/models/account-request-details-dto-requester
tags: ['SDK', 'Software Development Kit', 'AccountRequestDetailsDtoRequester', 'V2026AccountRequestDetailsDtoRequester']
---


# AccountRequestDetailsDtoRequester

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | [**DtoType**](dto-type) |  | [optional] 
**Id** | **String** | ID of the object to which this reference applies | [optional] 
**Name** | **String** | Human-readable display name of the object to which this reference applies | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountRequestDetailsDtoRequester = Initialize-V2026AccountRequestDetailsDtoRequester  -Type null `
 -Id 2c91808568c529c60168cca6f90c1313 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$AccountRequestDetailsDtoRequester | ConvertTo-JSON
```


[[Back to top]](#) 

