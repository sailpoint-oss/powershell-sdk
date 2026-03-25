---
id: v2026-role-mining-identity-distribution
title: RoleMiningIdentityDistribution
pagination_label: RoleMiningIdentityDistribution
sidebar_label: RoleMiningIdentityDistribution
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleMiningIdentityDistribution', 'V2026RoleMiningIdentityDistribution'] 
slug: /tools/sdk/powershell/v2026/models/role-mining-identity-distribution
tags: ['SDK', 'Software Development Kit', 'RoleMiningIdentityDistribution', 'V2026RoleMiningIdentityDistribution']
---


# RoleMiningIdentityDistribution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AttributeName** | **String** | Id of the potential role | [optional] 
**Distribution** | [**[]RoleMiningIdentityDistributionDistributionInner**](role-mining-identity-distribution-distribution-inner) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$RoleMiningIdentityDistribution = Initialize-V2026RoleMiningIdentityDistribution  -AttributeName department `
 -Distribution null
```

- Convert the resource to JSON
```powershell
$RoleMiningIdentityDistribution | ConvertTo-JSON
```


[[Back to top]](#) 

