---
id: v2026-entitlement-connection-search-hit-entitlement
title: EntitlementConnectionSearchHitEntitlement
pagination_label: EntitlementConnectionSearchHitEntitlement
sidebar_label: EntitlementConnectionSearchHitEntitlement
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementConnectionSearchHitEntitlement', 'V2026EntitlementConnectionSearchHitEntitlement'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-connection-search-hit-entitlement
tags: ['SDK', 'Software Development Kit', 'EntitlementConnectionSearchHitEntitlement', 'V2026EntitlementConnectionSearchHitEntitlement']
---


# EntitlementConnectionSearchHitEntitlement

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Entitlement identifier. | [optional] 
**Name** | **String** | Entitlement name. | [optional] 
**DisplayName** | **String** | Human-readable entitlement label. | [optional] 
**Description** | **String** | Entitlement description. | [optional] 
**Attribute** | **String** | Source attribute carrying entitlement values. | [optional] 
**Value** | **String** | Source entitlement value. | [optional] 
**SourceSchemaObjectType** | **String** | Source schema object type for the entitlement. | [optional] 
**PrivilegeLevel** | [**EntitlementConnectionSearchHitEntitlementPrivilegeLevel**](entitlement-connection-search-hit-entitlement-privilege-level) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementConnectionSearchHitEntitlement = Initialize-V2026EntitlementConnectionSearchHitEntitlement  -Id 2c918085804e1a0601806289c30a66de `
 -Name Launcher `
 -DisplayName Launcher `
 -Description description of launcher entitlement `
 -Attribute memberOf `
 -Value CN=productivity-bryants-org-1,OU=Groups,dc=flatfile,dc=endtoend,dc=com `
 -SourceSchemaObjectType ENTITLEMENT `
 -PrivilegeLevel null
```

- Convert the resource to JSON
```powershell
$EntitlementConnectionSearchHitEntitlement | ConvertTo-JSON
```


[[Back to top]](#) 

