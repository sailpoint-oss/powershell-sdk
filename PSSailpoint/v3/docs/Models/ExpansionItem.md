---
id: expansion-item
title: ExpansionItem
pagination_label: ExpansionItem
sidebar_label: ExpansionItem
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ExpansionItem', 'ExpansionItem'] 
slug: /tools/sdk/powershell/v3/models/expansion-item
tags: ['SDK', 'Software Development Kit', 'ExpansionItem', 'ExpansionItem']
---


# ExpansionItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | The ID of the account | [optional] 
**Cause** | **String** | Cause of the expansion item. | [optional] 
**Name** | **String** | The name of the item | [optional] 
**AttributeRequest** | [**AttributeRequest**](attribute-request) |  | [optional] 
**Source** | [**AccountSource**](account-source) |  | [optional] 
**Id** | **String** | ID of the expansion item | [optional] 
**State** | **String** | State of the expansion item | [optional] 

## Examples

- Prepare the resource
```powershell
$ExpansionItem = Initialize-ExpansionItem  -AccountId 2c91808981f58ea601821c3e93482e6f `
 -Cause Role `
 -Name smartsheet-role `
 -AttributeRequest null `
 -Source null `
 -Id ac2887ffe0e7435a8c18c73f7ae94c7b `
 -State EXECUTING
```

- Convert the resource to JSON
```powershell
$ExpansionItem | ConvertTo-JSON
```


[[Back to top]](#) 

