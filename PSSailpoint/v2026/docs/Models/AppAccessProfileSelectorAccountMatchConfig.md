---
id: v2026-app-access-profile-selector-account-match-config
title: AppAccessProfileSelectorAccountMatchConfig
pagination_label: AppAccessProfileSelectorAccountMatchConfig
sidebar_label: AppAccessProfileSelectorAccountMatchConfig
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AppAccessProfileSelectorAccountMatchConfig', 'V2026AppAccessProfileSelectorAccountMatchConfig'] 
slug: /tools/sdk/powershell/v2026/models/app-access-profile-selector-account-match-config
tags: ['SDK', 'Software Development Kit', 'AppAccessProfileSelectorAccountMatchConfig', 'V2026AppAccessProfileSelectorAccountMatchConfig']
---


# AppAccessProfileSelectorAccountMatchConfig

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MatchExpression** | [**AppAccessProfileSelectorAccountMatchConfigMatchExpression**](app-access-profile-selector-account-match-config-match-expression) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AppAccessProfileSelectorAccountMatchConfig = Initialize-V2026AppAccessProfileSelectorAccountMatchConfig  -MatchExpression null
```

- Convert the resource to JSON
```powershell
$AppAccessProfileSelectorAccountMatchConfig | ConvertTo-JSON
```


[[Back to top]](#) 

