---
id: v2024-original-request
title: OriginalRequest
pagination_label: OriginalRequest
sidebar_label: OriginalRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'OriginalRequest', 'V2024OriginalRequest'] 
slug: /tools/sdk/powershell/v2024/models/original-request
tags: ['SDK', 'Software Development Kit', 'OriginalRequest', 'V2024OriginalRequest']
---


# OriginalRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | Account ID. | [optional] 
**Result** | [**Result**](result) |  | [optional] 
**AttributeRequests** | [**[]AttributeRequest**](attribute-request) | Attribute changes requested for account. | [optional] 
**Op** | **String** | Operation used. | [optional] 
**Source** | [**AccountSource**](account-source) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OriginalRequest = Initialize-V2024OriginalRequest  -AccountId CN=Abby Smith,OU=Austin,OU=Americas,OU=Demo,DC=seri,DC=acme,DC=com `
 -Result null `
 -AttributeRequests null `
 -Op add `
 -Source null
```

- Convert the resource to JSON
```powershell
$OriginalRequest | ConvertTo-JSON
```


[[Back to top]](#) 

