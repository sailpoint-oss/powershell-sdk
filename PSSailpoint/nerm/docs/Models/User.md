---
id: nerm-user
title: User
pagination_label: User
sidebar_label: User
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'User', 'NERMUser'] 
slug: /tools/sdk/powershell/nerm/models/user
tags: ['SDK', 'Software Development Kit', 'User', 'NERMUser']
---


# User

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | ID of the object to retrieve or update | [optional] 
**Uid** | **String** | UID of the user | [optional] 
**Name** | **String** | The name | [optional] 
**Email** | **String** | The email | [optional] 
**Type** |  **Enum** [  "NeprofileUser",    "NeaccessUser" ] | Type of user | [optional] [default to "NeprofileUser"]
**Title** | **String** | The title | [optional] 
**Status** |  **Enum** [  "Active",    "Pending",    "Disabled" ] | Status of the user | [optional] 
**Login** | **String** | The login | [optional] 
**LastLogin** | **System.DateTime** | When the user last logged in | [optional] [readonly] 
**CookiesAcceptedAt** | **System.DateTime** | When cookies were accepted | [optional] [readonly] 
**PreferredLanguage** | **String** | The locale the user prefers to use | [optional] 
**Locale** | **String** | The locale the user prefers to use | [optional] 
**GroupStrings** | **String** | Group strings configured on the customer's Active Directory configuration, provided by the IDP at the moment on authentication. | [optional] 
**SailpointIdentityId** | **String** | The identity ID of the user in ISC | [optional] 

## Examples

- Prepare the resource
```powershell
$User = Initialize-NERMUser  -Id db6f8e8b-65c2-47d5-a0db-90bcc4e9df9e `
 -Uid user1 `
 -Name myusername `
 -Email test@sailpoint.com `
 -Type NeprofileUser `
 -Title Director `
 -Status Active `
 -Login myLogin `
 -LastLogin null `
 -CookiesAcceptedAt null `
 -PreferredLanguage fr-CA `
 -Locale fr-CA `
 -GroupStrings Admin_group, Developer_group `
 -SailpointIdentityId 9496f8d6ddab49c0bef1e9ee6f1b835a
```

- Convert the resource to JSON
```powershell
$User | ConvertTo-JSON
```


[[Back to top]](#) 

