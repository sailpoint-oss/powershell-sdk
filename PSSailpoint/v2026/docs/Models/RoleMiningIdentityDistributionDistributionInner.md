---
id: v2026-role-mining-identity-distribution-distribution-inner
title: RoleMiningIdentityDistributionDistributionInner
pagination_label: RoleMiningIdentityDistributionDistributionInner
sidebar_label: RoleMiningIdentityDistributionDistributionInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleMiningIdentityDistributionDistributionInner', 'V2026RoleMiningIdentityDistributionDistributionInner'] 
slug: /tools/sdk/powershell/v2026/models/role-mining-identity-distribution-distribution-inner
tags: ['SDK', 'Software Development Kit', 'RoleMiningIdentityDistributionDistributionInner', 'V2026RoleMiningIdentityDistributionDistributionInner']
---


# RoleMiningIdentityDistributionDistributionInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttributeValue** | **String** | The attribute value that identities are grouped by | [optional] 
**Count** | **Int32** | The number of identities that have this attribute value | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningIdentityDistributionDistributionInner = Initialize-V2026RoleMiningIdentityDistributionDistributionInner  -AttributeValue NM Tier 3 `
 -Count 6
```

- Convert the resource to JSON
```powershell
$RoleMiningIdentityDistributionDistributionInner | ConvertTo-JSON
```


[[Back to top]](#) 

