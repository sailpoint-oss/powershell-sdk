---
id: nerm-profile1
title: Profile1
pagination_label: Profile1
sidebar_label: Profile1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Profile1', 'NERMProfile1'] 
slug: /tools/sdk/powershell/nerm/models/profile1
tags: ['SDK', 'Software Development Kit', 'Profile1', 'NERMProfile1']
---


# Profile1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The profile name. | [optional] 
**ProfileTypeId** | **String** | The profile type id. | [required]
**Status** |  **Enum** [  "Active",    "Inactive",    "On Leave",    "Terminated" ] | The profile status. | [required]
**IdProofingStatus** |  **Enum** [  "pending",    "pass",    "fail" ] | The id proofing status of the profile. | [optional] 
**Archived** | **Boolean** | Describes whether the profile is archived or not. | [optional] [default to $false]
**Attributes** | **map[string]String** | The attributes associated with the profile. | [optional] 

## Examples

- Prepare the resource
```powershell
$Profile1 = Initialize-NERMProfile1  -Name First Last `
 -ProfileTypeId 79ed1cb6-9977-4965-9bfe-f2bcc2424444 `
 -Status Active `
 -IdProofingStatus pass `
 -Archived false `
 -Attributes {text_attribute_uid=static text, date_attribute_uid=01/15/2020, profile_select_attribute_uid=79ed1cb6-9977-4965-9bfe-f2bcc242523e, multiple_profile_select_attribute_uid=59ed1cb6-9977-4965-9bfe-f2bcc242523e, 89ed1cb6-9977-4965-9bfe-f2bcc242523e, profile_search_attribute_uid=79ed1cb6-9977-4965-9bfe-f2bcc242523e, multiple_profile_search_attribute_uid=59ed1cb6-9977-4965-9bfe-f2bcc242523e, 89ed1cb6-9977-4965-9bfe-f2bcc242523e, contributor_select_attribute_uid=49ed1cb6-9977-4965-9bfe-f2bcc2425244, contributor_search_attribute_uid=49ed1cb6-9977-4965-9bfe-f2bcc2425244, multiple_contributor_search_attribute_uid=59ed1cb6-9977-4965-9bfe-f2bcc242523e, 89ed1cb6-9977-4965-9bfe-f2bcc242523e, owner_select_attribute_uid=79ed1cb6-9977-4965-9bfe-f2bcc242523e, owner_search_attribute_uid=79ed1cb6-9977-4965-9bfe-f2bcc242523e, dropdown_attribute_uid=yes, no, tags_attribute_uid=yes, no, checkbox_attribute_uid=yes, no, text_area_uid=static text, radio_attribute_uid=yes, no}
```

- Convert the resource to JSON
```powershell
$Profile1 | ConvertTo-JSON
```


[[Back to top]](#) 

