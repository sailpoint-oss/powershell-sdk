---
id: access-item-requested-for-dto
title: AccessItemRequestedForDto
pagination_label: AccessItemRequestedForDto
sidebar_label: AccessItemRequestedForDto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessItemRequestedForDto', 'AccessItemRequestedForDto'] 
slug: /tools/sdk/powershell/triggers/models/access-item-requested-for-dto
tags: ['SDK', 'Software Development Kit', 'AccessItemRequestedForDto', 'AccessItemRequestedForDto']
---


# AccessItemRequestedForDto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "IDENTITY" ] | DTO type of identity the access item is requested for. | [optional] 
**Id** | **String** | ID of identity the access item is requested for. | [optional] 
**Name** | **String** | Human-readable display name of identity the access item is requested for. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessItemRequestedForDto = Initialize-AccessItemRequestedForDto  -Type IDENTITY `
 -Id 2c4180a46faadee4016fb4e018c20626 `
 -Name Robert Robinson
```

- Convert the resource to JSON
```powershell
$AccessItemRequestedForDto | ConvertTo-JSON
```


[[Back to top]](#) 

