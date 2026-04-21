---
id: nerm-profile-page
title: ProfilePage
pagination_label: ProfilePage
sidebar_label: ProfilePage
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ProfilePage', 'NERMProfilePage'] 
slug: /tools/sdk/powershell/nerm/models/profile-page
tags: ['SDK', 'Software Development Kit', 'ProfilePage', 'NERMProfilePage']
---


# ProfilePage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Uid** | **String** | The user-specified identifier of the page | [optional] 
**Description** | **String** | The description of the page | [optional] 
**Name** | **String** | The name of the page | [optional] 
**Archived** | **Boolean** | Determines whether the page is archived | [optional] 

## Examples

- Prepare the resource
```powershell
$ProfilePage = Initialize-NERMProfilePage  -Uid page_uid `
 -Description Page for workflow `
 -Name My Page Name `
 -Archived false
```

- Convert the resource to JSON
```powershell
$ProfilePage | ConvertTo-JSON
```


[[Back to top]](#) 

