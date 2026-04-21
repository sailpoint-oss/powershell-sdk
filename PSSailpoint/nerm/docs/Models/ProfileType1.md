---
id: nerm-profile-type1
title: ProfileType1
pagination_label: ProfileType1
sidebar_label: ProfileType1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfileType1', 'NERMProfileType1'] 
slug: /tools/sdk/powershell/nerm/models/profile-type1
tags: ['SDK', 'Software Development Kit', 'ProfileType1', 'NERMProfileType1']
---


# ProfileType1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | This is the name of the profile type. | [optional] 
**Category** |  **Enum** [  "employee",    "non-employee",    "organization",    "assignment",    "other" ] | This is the category the profile type falls into. | [optional] 
**BypassDupProtection** | **Boolean** | Whether or not duplication protection is bypassed. | [optional] [default to $false]
**Archived** | **Boolean** | Whether or not the profile type is archived. | [optional] [default to $false]
**PermittedRoleIds** | **[]String** | The role ids that are permitted for this profile type. | [optional] 
**IscSynced** | **Boolean** | Is this profile type synced with ics | [optional] [default to $false]
**ProfileTypeDupAttributesAttributes** | [**[]ProfileType1ProfileTypeDupAttributesAttributesInner**](profile-type1-profile-type-dup-attributes-attributes-inner) |  | [optional] 
**ProfileTypeNamingsAttributes** | [**[]ProfileType1ProfileTypeNamingsAttributesInner**](profile-type1-profile-type-namings-attributes-inner) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfileType1 = Initialize-NERMProfileType1  -Name Worker `
 -Category employee `
 -BypassDupProtection false `
 -Archived false `
 -PermittedRoleIds [33f072dd-13b4-41e1-8ea0-16f2a59b57c8] `
 -IscSynced false `
 -ProfileTypeDupAttributesAttributes null `
 -ProfileTypeNamingsAttributes null
```

- Convert the resource to JSON
```powershell
$ProfileType1 | ConvertTo-JSON
```


[[Back to top]](#) 

