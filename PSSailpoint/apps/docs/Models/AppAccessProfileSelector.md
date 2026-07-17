---
id: app-access-profile-selector
title: AppAccessProfileSelector
pagination_label: AppAccessProfileSelector
sidebar_label: AppAccessProfileSelector
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AppAccessProfileSelector', 'AppAccessProfileSelector'] 
slug: /tools/sdk/powershell/apps/models/app-access-profile-selector
tags: ['SDK', 'Software Development Kit', 'AppAccessProfileSelector', 'AppAccessProfileSelector']
---


# AppAccessProfileSelector

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationId** | **String** | The application id | [optional] 
**AccountMatchConfig** | [**AppAccessProfileSelectorAccountMatchConfig**](app-access-profile-selector-account-match-config) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppAccessProfileSelector = Initialize-AppAccessProfileSelector  -ApplicationId 2c91808874ff91550175097daaec161c" `
 -AccountMatchConfig null
```

- Convert the resource to JSON
```powershell
$AppAccessProfileSelector | ConvertTo-JSON
```


[[Back to top]](#) 

