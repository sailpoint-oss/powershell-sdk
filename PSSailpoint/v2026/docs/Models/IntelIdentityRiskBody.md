---
id: v2026-intel-identity-risk-body
title: IntelIdentityRiskBody
pagination_label: IntelIdentityRiskBody
sidebar_label: IntelIdentityRiskBody
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelIdentityRiskBody', 'V2026IntelIdentityRiskBody'] 
slug: /tools/sdk/powershell/v2026/models/intel-identity-risk-body
tags: ['SDK', 'Software Development Kit', 'IntelIdentityRiskBody', 'V2026IntelIdentityRiskBody']
---


# IntelIdentityRiskBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Outliers** | [**[]IntelOutlierAccessItem**](intel-outlier-access-item) | Page of outlier access-items associated with the resolved identity outlier. | [required]
**OutliersTotal** | **Int64** | Total available outlier access-item count from upstream. | [required]
**Links** | [**IntelRiskLinks**](intel-risk-links) | Continuation links map; omitted when no additional page exists. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelIdentityRiskBody = Initialize-V2026IntelIdentityRiskBody  -Outliers [{id=outlier-access-001, displayName=Example_Admin_Access, description=null, accessType=ENTITLEMENT, sourceName=Example SaaS Source, extremelyRare=false}] `
 -OutliersTotal 312 `
 -Links null
```

- Convert the resource to JSON
```powershell
$IntelIdentityRiskBody | ConvertTo-JSON
```


[[Back to top]](#) 

