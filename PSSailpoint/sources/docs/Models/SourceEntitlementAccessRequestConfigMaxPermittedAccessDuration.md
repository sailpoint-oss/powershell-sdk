---
id: source-entitlement-access-request-config-max-permitted-access-duration
title: SourceEntitlementAccessRequestConfigMaxPermittedAccessDuration
pagination_label: SourceEntitlementAccessRequestConfigMaxPermittedAccessDuration
sidebar_label: SourceEntitlementAccessRequestConfigMaxPermittedAccessDuration
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SourceEntitlementAccessRequestConfigMaxPermittedAccessDuration', 'SourceEntitlementAccessRequestConfigMaxPermittedAccessDuration'] 
slug: /tools/sdk/powershell/sources/models/source-entitlement-access-request-config-max-permitted-access-duration
tags: ['SDK', 'Software Development Kit', 'SourceEntitlementAccessRequestConfigMaxPermittedAccessDuration', 'SourceEntitlementAccessRequestConfigMaxPermittedAccessDuration']
---


# SourceEntitlementAccessRequestConfigMaxPermittedAccessDuration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **Int32** | The numeric value of the duration. | [optional] 
**TimeUnit** |  **Enum** [  "HOURS",    "DAYS",    "WEEKS",    "MONTHS" ] | The time unit for the duration. | [optional] 

## Examples

- Prepare the resource
```powershell
$SourceEntitlementAccessRequestConfigMaxPermittedAccessDuration = Initialize-SourceEntitlementAccessRequestConfigMaxPermittedAccessDuration  -Value 5 `
 -TimeUnit DAYS
```

- Convert the resource to JSON
```powershell
$SourceEntitlementAccessRequestConfigMaxPermittedAccessDuration | ConvertTo-JSON
```


[[Back to top]](#) 

