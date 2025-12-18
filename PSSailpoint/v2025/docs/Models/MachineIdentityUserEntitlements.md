---
id: v2025-machine-identity-user-entitlements
title: MachineIdentityUserEntitlements
pagination_label: MachineIdentityUserEntitlements
sidebar_label: MachineIdentityUserEntitlements
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MachineIdentityUserEntitlements', 'V2025MachineIdentityUserEntitlements'] 
slug: /tools/sdk/powershell/v2025/models/machine-identity-user-entitlements
tags: ['SDK', 'Software Development Kit', 'MachineIdentityUserEntitlements', 'V2025MachineIdentityUserEntitlements']
---


# MachineIdentityUserEntitlements

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EntitlementId** | **String** | Entitlement identifier. | [required]
**DisplayName** | **String** | Display name of the entitlement. | [required]
**Source** | [**MachineIdentitySourceReference**](machine-identity-source-reference) |  | [required]

## Examples

- Prepare the resource
```powershell
$MachineIdentityUserEntitlements = Initialize-V2025MachineIdentityUserEntitlements  -EntitlementId 2509f650c20a3ab5956be70f6f136fbc `
 -DisplayName CN=Engineering-test-org3,OU=megapod-useast1-test-org3,OU=org-data-service,DC=TestAutomationAD,DC=local `
 -Source null
```

- Convert the resource to JSON
```powershell
$MachineIdentityUserEntitlements | ConvertTo-JSON
```


[[Back to top]](#) 

