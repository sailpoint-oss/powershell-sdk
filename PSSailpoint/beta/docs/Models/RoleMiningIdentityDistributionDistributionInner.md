---
id: beta-role-mining-identity-distribution-distribution-inner
title: RoleMiningIdentityDistributionDistributionInner
pagination_label: RoleMiningIdentityDistributionDistributionInner
sidebar_label: RoleMiningIdentityDistributionDistributionInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'RoleMiningIdentityDistributionDistributionInner', 'BetaRoleMiningIdentityDistributionDistributionInner'] 
slug: /tools/sdk/powershell/beta/models/role-mining-identity-distribution-distribution-inner
tags: ['SDK', 'Software Development Kit', 'RoleMiningIdentityDistributionDistributionInner', 'BetaRoleMiningIdentityDistributionDistributionInner']
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
$RoleMiningIdentityDistributionDistributionInner = Initialize-BetaRoleMiningIdentityDistributionDistributionInner  -AttributeValue NM Tier 3 `
 -Count 6
```

- Convert the resource to JSON
```powershell
$RoleMiningIdentityDistributionDistributionInner | ConvertTo-JSON
```


[[Back to top]](#) 

