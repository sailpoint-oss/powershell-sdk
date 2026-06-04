---
id: v2026-intel-risk-links
title: IntelRiskLinks
pagination_label: IntelRiskLinks
sidebar_label: IntelRiskLinks
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelRiskLinks', 'V2026IntelRiskLinks'] 
slug: /tools/sdk/powershell/v2026/models/intel-risk-links
tags: ['SDK', 'Software Development Kit', 'IntelRiskLinks', 'V2026IntelRiskLinks']
---


# IntelRiskLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Outliers** | [**IntelHref**](intel-href) | Link to fetch the next outlier page for the same identity. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelRiskLinks = Initialize-V2026IntelRiskLinks  -Outliers null
```

- Convert the resource to JSON
```powershell
$IntelRiskLinks | ConvertTo-JSON
```


[[Back to top]](#) 

