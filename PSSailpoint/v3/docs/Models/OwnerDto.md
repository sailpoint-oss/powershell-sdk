---
id: owner-dto
title: OwnerDto
pagination_label: OwnerDto
sidebar_label: OwnerDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'OwnerDto', 'OwnerDto'] 
slug: /tools/sdk/powershell/v3/models/owner-dto
tags: ['SDK', 'Software Development Kit', 'OwnerDto', 'OwnerDto']
---


# OwnerDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "IDENTITY" ] | Owner's DTO type. | [optional] 
**Id** | **String** | Owner's identity ID. | [optional] 
**Name** | **String** | Owner's name. | [optional] 

## Examples

- Prepare the resource
```powershell
$OwnerDto = Initialize-OwnerDto  -Type IDENTITY `
 -Id 2c9180a46faadee4016fb4e018c20639 `
 -Name Support
```

- Convert the resource to JSON
```powershell
$OwnerDto | ConvertTo-JSON
```


[[Back to top]](#) 

