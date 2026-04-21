---
id: nerm-user-profile1
title: UserProfile1
pagination_label: UserProfile1
sidebar_label: UserProfile1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'UserProfile1', 'NERMUserProfile1'] 
slug: /tools/sdk/powershell/nerm/models/user-profile1
tags: ['SDK', 'Software Development Kit', 'UserProfile1', 'NERMUserProfile1']
---


# UserProfile1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserId** | **String** |  | [optional] 
**ProfileId** | **String** |  | [optional] 
**NeAttributeId** | **String** |  | [optional] 
**RelationshipType** |  **Enum** [  "owner",    "contributor" ] |  | [optional] 

## Examples

- Prepare the resource
```powershell
$UserProfile1 = Initialize-NERMUserProfile1  -UserId null `
 -ProfileId null `
 -NeAttributeId null `
 -RelationshipType null
```

- Convert the resource to JSON
```powershell
$UserProfile1 | ConvertTo-JSON
```


[[Back to top]](#) 

