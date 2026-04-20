---
id: nerm-user-profile
title: UserProfile
pagination_label: UserProfile
sidebar_label: UserProfile
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UserProfile', 'NERMUserProfile'] 
slug: /tools/sdk/powershell/nerm/models/user-profile
tags: ['SDK', 'Software Development Kit', 'UserProfile', 'NERMUserProfile']
---


# UserProfile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** |  | [optional] [readonly] 
**Uid** | **String** |  | [optional] [readonly] 
**UserId** | **String** |  | [optional] 
**ProfileId** | **String** |  | [optional] 
**NeAttributeId** | **String** |  | [optional] 
**RelationshipType** |  **Enum** [  "owner",    "contributor" ] |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserProfile = Initialize-NERMUserProfile  -Id null `
 -Uid null `
 -UserId null `
 -ProfileId null `
 -NeAttributeId null `
 -RelationshipType null
```

- Convert the resource to JSON
```powershell
$UserProfile | ConvertTo-JSON
```


[[Back to top]](#) 

