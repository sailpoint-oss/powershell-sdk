---
id: v2024-app-account-details-source-account
title: AppAccountDetailsSourceAccount
pagination_label: AppAccountDetailsSourceAccount
sidebar_label: AppAccountDetailsSourceAccount
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AppAccountDetailsSourceAccount', 'V2024AppAccountDetailsSourceAccount'] 
slug: /tools/sdk/powershell/v2024/models/app-account-details-source-account
tags: ['SDK', 'Software Development Kit', 'AppAccountDetailsSourceAccount', 'V2024AppAccountDetailsSourceAccount']
---


# AppAccountDetailsSourceAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The account ID | [optional] 
**NativeIdentity** | **String** | The native identity of account | [optional] 
**DisplayName** | **String** | The display name of account | [optional] 
**SourceId** | **String** | The source ID of account | [optional] 
**SourceDisplayName** | **String** | The source name of account | [optional] 

## Examples

- Prepare the resource
```powershell
$AppAccountDetailsSourceAccount = Initialize-PSSailpoint.V2024AppAccountDetailsSourceAccount  -Id fbf4f72280304f1a8bc808fc2a3bcf7b `
 -NativeIdentity CN&#x3D;Abby Smith,OU&#x3D;Austin,OU&#x3D;Americas,OU&#x3D;Demo,DC&#x3D;seri,DC&#x3D;acme,DC&#x3D;com `
 -DisplayName Abby Smith `
 -SourceId 10efa58ea3954883b52bf74f489ce8f9 `
 -SourceDisplayName ODS-AD-SOURCE
```

- Convert the resource to JSON
```powershell
$AppAccountDetailsSourceAccount | ConvertTo-JSON
```


[[Back to top]](#) 

