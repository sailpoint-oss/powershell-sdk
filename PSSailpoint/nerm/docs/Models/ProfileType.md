---
id: nerm-profile-type
title: ProfileType
pagination_label: ProfileType
sidebar_label: ProfileType
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileType', 'NERMProfileType'] 
slug: /tools/sdk/powershell/nerm/models/profile-type
tags: ['SDK', 'Software Development Kit', 'ProfileType', 'NERMProfileType']
---


# ProfileType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The objects ID. | [optional] [readonly] 
**Uid** | **String** | The objects UID. | [optional] [readonly] 
**Name** | **String** | This is the name of the profile type. | [optional] 
**Category** |  **Enum** [  "employee",    "non-employee",    "organization",    "assignment",    "other" ] | This is the category the profile type falls into. | [optional] 
**BypassDupProtection** | **Boolean** | Whether or not duplication protection is bypassed. | [optional] 
**Archived** | **Boolean** | Whether or not the profile type is archived. | [optional] 
**PermittedRoleIds** | **[]String** | The role ids that are permitted for this profile type. | [optional] 
**IscSynced** | **Boolean** | Is this profile type synced with ics | [optional] 
**ProfileTypeDupAttributes** | [**[]ProfileTypeProfileTypeDupAttributesInner**](profile-type-profile-type-dup-attributes-inner) |  | [optional] 
**ProfileTypeNamings** | [**[]ProfileTypeProfileTypeNamingsInner**](profile-type-profile-type-namings-inner) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileType = Initialize-NERMProfileType  -Id 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Uid ptUid `
 -Name Worker `
 -Category employee `
 -BypassDupProtection false `
 -Archived false `
 -PermittedRoleIds [33f072dd-13b4-41e1-8ea0-16f2a59b57c8] `
 -IscSynced false `
 -ProfileTypeDupAttributes null `
 -ProfileTypeNamings null
```

- Convert the resource to JSON
```powershell
$ProfileType | ConvertTo-JSON
```


[[Back to top]](#) 

