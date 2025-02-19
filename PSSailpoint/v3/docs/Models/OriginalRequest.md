---
id: original-request
title: OriginalRequest
pagination_label: OriginalRequest
sidebar_label: OriginalRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'OriginalRequest', 'OriginalRequest'] 
slug: /tools/sdk/powershell/v3/models/original-request
tags: ['SDK', 'Software Development Kit', 'OriginalRequest', 'OriginalRequest']
---


# OriginalRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | Account ID. | [optional] 
**AttributeRequests** | [**[]AttributeRequest**](attribute-request) | Attribute changes requested for account. | [optional] 
**Op** | **String** | Operation used. | [optional] 
**Source** | [**AccountSource**](account-source) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$OriginalRequest = Initialize-PSSailpoint.V3OriginalRequest  -AccountId CN=Abby Smith,OU=Austin,OU=Americas,OU=Demo,DC=seri,DC=acme,DC=com `
 -AttributeRequests null `
 -Op add `
 -Source null
$OriginalRequest = @"undefined"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToOriginalRequest -Json $OriginalRequest
```


[[Back to top]](#) 

