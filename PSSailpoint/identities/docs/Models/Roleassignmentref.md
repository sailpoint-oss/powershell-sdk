---
id: roleassignmentref
title: Roleassignmentref
pagination_label: Roleassignmentref
sidebar_label: Roleassignmentref
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Roleassignmentref', 'Roleassignmentref'] 
slug: /tools/sdk/powershell/identitiesv1/models/roleassignmentref
tags: ['SDK', 'Software Development Kit', 'Roleassignmentref', 'Roleassignmentref']
---


# Roleassignmentref

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Assignment Id | [optional] 
**Role** | [**Basereferencedto**](basereferencedto) |  | [optional] 
**AddedDate** | **System.DateTime** | Date that the assignment was added | [optional] 
**RemoveDate** | **System.DateTime** | Date that the assignment will be removed | [optional] 

## Examples

- Prepare the resource
```powershell
$Roleassignmentref = Initialize-Roleassignmentref  -Id 1cbb0705b38c4226b1334eadd8874086 `
 -Role null `
 -AddedDate 2025-07-11T18:45:37.098Z `
 -RemoveDate 2026-01-23T19:15Z
```

- Convert the resource to JSON
```powershell
$Roleassignmentref | ConvertTo-JSON
```


[[Back to top]](#) 

