---
id: machineclassificationcriterialevel3
title: Machineclassificationcriterialevel3
pagination_label: Machineclassificationcriterialevel3
sidebar_label: Machineclassificationcriterialevel3
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Machineclassificationcriterialevel3', 'Machineclassificationcriterialevel3'] 
slug: /tools/sdk/powershell/machineclassificationconfigv1/models/machineclassificationcriterialevel3
tags: ['SDK', 'Software Development Kit', 'Machineclassificationcriterialevel3', 'Machineclassificationcriterialevel3']
---


# Machineclassificationcriterialevel3

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Operation** | [**Machineclassificationcriteriaoperation**](machineclassificationcriteriaoperation) |  | [optional] 
**CaseSensitive** | **Boolean** | Indicates whether or not case matters when evaluating the criteria | [optional] [default to $false]
**DataType** | **String** | The data type of the attribute being evaluated | [optional] 
**Attribute** | **String** | The attribute to evaluate in the classification criteria | [optional] 
**Value** | **String** | The value to compare against the attribute in the classification criteria | [optional] 
**Children** | [**[]SystemCollectionsHashtable**](system-collections-hashtable) | An array of child classification criteria objects | [optional] 

## Examples

- Prepare the resource
```powershell
$Machineclassificationcriterialevel3 = Initialize-Machineclassificationcriterialevel3  -Operation null `
 -CaseSensitive false `
 -DataType null `
 -Attribute sAMAccountName `
 -Value SVC `
 -Children null
```

- Convert the resource to JSON
```powershell
$Machineclassificationcriterialevel3 | ConvertTo-JSON
```


[[Back to top]](#) 

