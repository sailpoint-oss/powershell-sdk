---
id: nerm-model-profile
title: ModelProfile
pagination_label: ModelProfile
sidebar_label: ModelProfile
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ModelProfile', 'NERMModelProfile'] 
slug: /tools/sdk/powershell/nerm/models/model-profile
tags: ['SDK', 'Software Development Kit', 'ModelProfile', 'NERMModelProfile']
---


# ModelProfile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The objects ID | [optional] [readonly] 
**Uid** | **String** | The objects UID | [optional] [readonly] 
**Name** | **String** | This is the name of the profile. | [optional] 
**ProfileTypeId** | **String** | This is the ID of the profile type the profile belongs to | [optional] 
**Status** |  **Enum** [  "Active",    "Inactive",    "On Leave",    "Terminated" ] | This is the status of the profile | [optional] 
**IdProofingStatus** |  **Enum** [  "pending",    "pass",    "fail" ] | This is the ID proofing staus of the profile | [optional] 
**CreatedAt** | **System.DateTime** | The date and time the profile was created | [optional] 
**UpdatedAt** | **System.DateTime** | The date and time the profile was updated | [optional] 
**Attributes** | **map[string]String** | Attributes that belong to this profile. | [optional] 

## Examples

- Prepare the resource
```powershell
$ModelProfile = Initialize-NERMModelProfile  -Id 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Uid profileUid `
 -Name Profile Name `
 -ProfileTypeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -Status Active `
 -IdProofingStatus pending `
 -CreatedAt 2023-11-21T14:23:54.256-05:00 `
 -UpdatedAt 2023-11-21T14:23:54.256-05:00 `
 -Attributes {Non-Employee Profile ID=The Non-Employee Profile ID (will be returned for assignments, to be used during correlation configuration), text_attribute_uid=static text, date_attribute_uid=01/15/2020, profile_select_attribute_uid=Profile Name, profile_search_attribute_uid=Profile Name, multiple_profile_search_attribute_uid=Profile Name,Second Profile Name,Third Profile Name, multiple_profile_select_attribute_uid=Profile Name,Second Profile Name,Third Profile Name, contributor_select_attribute_uid=User Name (user_email@test.com), contributor_search_attribute_uid=User Name (user_email@test.com), multiple_contributor_search_attribute_uid=User Name (user_email@test.com),Second User Name (user_email@test.com),Third User Name (user_email@test.com), owner_select_attribute_uid=User Name (user_email@test.com), owner_search_attribute_uid=User Name (user_email@test.com), dropdown_attribute_uid=yes, no, tags_attribute_uid=yes, no, checkbox_attribute_uid=yes, no, text_area_uid=static text, radio_attribute_uid=yes, no}
```

- Convert the resource to JSON
```powershell
$ModelProfile | ConvertTo-JSON
```


[[Back to top]](#) 

