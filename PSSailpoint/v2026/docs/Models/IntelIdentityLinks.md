---
id: v2026-intel-identity-links
title: IntelIdentityLinks
pagination_label: IntelIdentityLinks
sidebar_label: IntelIdentityLinks
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelIdentityLinks', 'V2026IntelIdentityLinks'] 
slug: /tools/sdk/powershell/v2026/models/intel-identity-links
tags: ['SDK', 'Software Development Kit', 'IntelIdentityLinks', 'V2026IntelIdentityLinks']
---


# IntelIdentityLinks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Access** | [**IntelHref**](intel-href) | Hyperlink to the Intelligence Package access document for this identity. | [required]
**Risk** | [**IntelHref**](intel-href) | Hyperlink to the Intelligence Package risk document for this identity. | [required]
**AccessHistory** | [**IntelHref**](intel-href) | Hyperlink to the Intelligence Package access history document for this identity. | [required]

## Examples

- Prepare the resource
```powershell
$IntelIdentityLinks = Initialize-V2026IntelIdentityLinks  -Access null `
 -Risk null `
 -AccessHistory null
```

- Convert the resource to JSON
```powershell
$IntelIdentityLinks | ConvertTo-JSON
```


[[Back to top]](#) 

