---
id: v2026-account-details
title: AccountDetails
pagination_label: AccountDetails
sidebar_label: AccountDetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccountDetails', 'V2026AccountDetails'] 
slug: /tools/sdk/powershell/v2026/models/account-details
tags: ['SDK', 'Software Development Kit', 'AccountDetails', 'V2026AccountDetails']
---


# AccountDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **String** | ID of account | [optional] 
**AccountName** | **String** | Account name | [optional] 
**AccountNativeIdentity** | **String** | Native identity of account | [optional] 
**AccountUuid** | **String** | UUID associated with account | [optional] 
**AccountType** | **String** | Type of account | [optional] 
**AccountSubtypeId** | **String** | Sub Type ID of account | [optional] 
**AccountSubtype** | **String** | Subtype of account | [optional] 
**Description** | **String** | Account Description | [optional] 
**SourceId** | **String** | ID of source | [optional] 
**SourceName** | **String** | Name of source | [optional] 
**HasEntitlements** | **Boolean** | Indicates entitlements assigned to identity or not | [optional] [default to $false]
**Disabled** | **Boolean** | Indicates account is enabled/disabled | [optional] [default to $false]
**Locked** | **Boolean** | Indicates account locked/unlocked | [optional] [default to $false]
**OwnerIdentity** | [**AccountDetailsOwnerIdentity**](account-details-owner-identity) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$AccountDetails = Initialize-V2026AccountDetails  -AccountId 15e169acf21f4ae28e8a06198ce7f699 `
 -AccountName walter.white `
 -AccountNativeIdentity CN=Walter White,OU=BB,OU=org-data-service,DC=TestAutomationAD,DC=local `
 -AccountUuid {3bbeb846-e168-47d2-9e5d-bd46506c9280=null} `
 -AccountType HUMAN `
 -AccountSubtypeId null `
 -AccountSubtype null `
 -Description This is human account for identity walter.white `
 -SourceId ee03924d95034cd088cbd5af068f1772 `
 -SourceName BB AD `
 -HasEntitlements true `
 -Disabled false `
 -Locked false `
 -OwnerIdentity null
```

- Convert the resource to JSON
```powershell
$AccountDetails | ConvertTo-JSON
```


[[Back to top]](#) 

