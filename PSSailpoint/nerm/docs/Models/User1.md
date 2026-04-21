---
id: nerm-user1
title: User1
pagination_label: User1
sidebar_label: User1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'User1', 'NERMUser1'] 
slug: /tools/sdk/powershell/nerm/models/user1
tags: ['SDK', 'Software Development Kit', 'User1', 'NERMUser1']
---


# User1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** | The user name | [required]
**Email** | **String** | The user email | [required]
**Type** |  **Enum** [  "NeprofileUser",    "NeaccessUser" ] | The user type | [required][default to "NeprofileUser"]
**ProfileId** | **String** | The user profile id. Not required for NeprofileUser | [optional] 
**Title** | **String** | The user description | [optional] 
**Status** |  **Enum** [  "Active",    "Pending",    "Disabled" ] | The user status | [optional] 
**Login** | **String** | The user login | [required]
**GroupStrings** | **String** | The user group strings | [optional] 
**Locale** | **String** | The locale the user prefers to use | [optional] 
**Password** | **String** | The user password. Not required for NeprofileUser | [optional] 
**SailpointIdentityId** | **String** | The SailPoint Identity ID associated with this user | [optional] 

## Examples

- Prepare the resource
```powershell
$User1 = Initialize-NERMUser1  -Name Bob `
 -Email test@sailpoint.com `
 -Type NeprofileUser `
 -ProfileId db6f8e8b-65c2-47d5-a0db-90bcc4e9df9e `
 -Title my_user_title `
 -Status Active `
 -Login my_user `
 -GroupStrings Administrator_group,Developer_group `
 -Locale fr-CA `
 -Password U*bF7hy9fW `
 -SailpointIdentityId db6f8e8b-65c2-47d5-a0db-90bcc4e9df9e
```

- Convert the resource to JSON
```powershell
$User1 | ConvertTo-JSON
```


[[Back to top]](#) 

