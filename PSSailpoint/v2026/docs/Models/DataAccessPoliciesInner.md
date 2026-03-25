---
id: v2026-data-access-policies-inner
title: DataAccessPoliciesInner
pagination_label: DataAccessPoliciesInner
sidebar_label: DataAccessPoliciesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DataAccessPoliciesInner', 'V2026DataAccessPoliciesInner'] 
slug: /tools/sdk/powershell/v2026/models/data-access-policies-inner
tags: ['SDK', 'Software Development Kit', 'DataAccessPoliciesInner', 'V2026DataAccessPoliciesInner']
---


# DataAccessPoliciesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** | Value of the policy | [optional] 

## Examples

- Prepare the resource
```powershell
$DataAccessPoliciesInner = Initialize-V2026DataAccessPoliciesInner  -Value GDPR-20
```

- Convert the resource to JSON
```powershell
$DataAccessPoliciesInner | ConvertTo-JSON
```


[[Back to top]](#) 

