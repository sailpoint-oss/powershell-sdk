---
id: human-account-subtype-create-request
title: HumanAccountSubtypeCreateRequest
pagination_label: HumanAccountSubtypeCreateRequest
sidebar_label: HumanAccountSubtypeCreateRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'HumanAccountSubtypeCreateRequest', 'HumanAccountSubtypeCreateRequest'] 
slug: /tools/sdk/powershell/humanaccountsubtypes/models/human-account-subtype-create-request
tags: ['SDK', 'Software Development Kit', 'HumanAccountSubtypeCreateRequest', 'HumanAccountSubtypeCreateRequest']
---


# HumanAccountSubtypeCreateRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TechnicalName** | **String** | Technical name of the subtype. | [required]
**DisplayName** | **String** | Display name of the subtype. | [required]
**Description** | **String** | Description of the subtype. | [optional] 
**Default** | **Boolean** | Whether this subtype is the default human account subtype of the source. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$HumanAccountSubtypeCreateRequest = Initialize-HumanAccountSubtypeCreateRequest  -TechnicalName contractor `
 -DisplayName Contractor `
 -Description Contractors with a limited account lifecycle `
 -Default false
```

- Convert the resource to JSON
```powershell
$HumanAccountSubtypeCreateRequest | ConvertTo-JSON
```


[[Back to top]](#) 

