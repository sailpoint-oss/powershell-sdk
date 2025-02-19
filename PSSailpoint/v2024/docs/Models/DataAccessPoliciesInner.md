---
id: v2024-data-access-policies-inner
title: DataAccessPoliciesInner
pagination_label: DataAccessPoliciesInner
sidebar_label: DataAccessPoliciesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'DataAccessPoliciesInner', 'V2024DataAccessPoliciesInner'] 
slug: /tools/sdk/powershell/v2024/models/data-access-policies-inner
tags: ['SDK', 'Software Development Kit', 'DataAccessPoliciesInner', 'V2024DataAccessPoliciesInner']
---


# DataAccessPoliciesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Value** | **String** | Value of the policy | [optional] 

## Examples

- Prepare the resource
```powershell
$DataAccessPoliciesInner = Initialize-PSSailpoint.V2024DataAccessPoliciesInner  -Value GDPR-20
$DataAccessPoliciesInner = @"{  "Value": "GDPR-20" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToDataAccessPoliciesInner -Json $DataAccessPoliciesInner
```


[[Back to top]](#) 

