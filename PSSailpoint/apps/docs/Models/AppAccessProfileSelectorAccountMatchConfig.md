---
id: app-access-profile-selector-account-match-config
title: AppAccessProfileSelectorAccountMatchConfig
pagination_label: AppAccessProfileSelectorAccountMatchConfig
sidebar_label: AppAccessProfileSelectorAccountMatchConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AppAccessProfileSelectorAccountMatchConfig', 'AppAccessProfileSelectorAccountMatchConfig'] 
slug: /tools/sdk/powershell/apps/models/app-access-profile-selector-account-match-config
tags: ['SDK', 'Software Development Kit', 'AppAccessProfileSelectorAccountMatchConfig', 'AppAccessProfileSelectorAccountMatchConfig']
---


# AppAccessProfileSelectorAccountMatchConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MatchExpression** | [**AppAccessProfileSelectorAccountMatchConfigMatchExpression**](app-access-profile-selector-account-match-config-match-expression) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppAccessProfileSelectorAccountMatchConfig = Initialize-AppAccessProfileSelectorAccountMatchConfig  -MatchExpression null
```

- Convert the resource to JSON
```powershell
$AppAccessProfileSelectorAccountMatchConfig | ConvertTo-JSON
```


[[Back to top]](#) 

