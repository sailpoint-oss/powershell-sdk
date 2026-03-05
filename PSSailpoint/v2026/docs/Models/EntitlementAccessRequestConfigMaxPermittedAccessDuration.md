---
id: v2026-entitlement-access-request-config-max-permitted-access-duration
title: EntitlementAccessRequestConfigMaxPermittedAccessDuration
pagination_label: EntitlementAccessRequestConfigMaxPermittedAccessDuration
sidebar_label: EntitlementAccessRequestConfigMaxPermittedAccessDuration
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementAccessRequestConfigMaxPermittedAccessDuration', 'V2026EntitlementAccessRequestConfigMaxPermittedAccessDuration'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-access-request-config-max-permitted-access-duration
tags: ['SDK', 'Software Development Kit', 'EntitlementAccessRequestConfigMaxPermittedAccessDuration', 'V2026EntitlementAccessRequestConfigMaxPermittedAccessDuration']
---


# EntitlementAccessRequestConfigMaxPermittedAccessDuration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **Int32** | The numeric value of the duration. | [optional] 
**TimeUnit** |  **Enum** [  "HOURS",    "DAYS",    "WEEKS",    "MONTHS" ] | The time unit for the duration. | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementAccessRequestConfigMaxPermittedAccessDuration = Initialize-V2026EntitlementAccessRequestConfigMaxPermittedAccessDuration  -Value 5 `
 -TimeUnit DAYS
```

- Convert the resource to JSON
```powershell
$EntitlementAccessRequestConfigMaxPermittedAccessDuration | ConvertTo-JSON
```


[[Back to top]](#) 

