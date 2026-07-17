---
id: identity-compare-response
title: IdentityCompareResponse
pagination_label: IdentityCompareResponse
sidebar_label: IdentityCompareResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityCompareResponse', 'IdentityCompareResponse'] 
slug: /tools/sdk/powershell/identityhistory/models/identity-compare-response
tags: ['SDK', 'Software Development Kit', 'IdentityCompareResponse', 'IdentityCompareResponse']
---


# IdentityCompareResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessItemDiff** | **map[string]SystemCollectionsHashtable** | Arbitrary key-value pairs. They will never be processed by the IdentityNow system but will be returned on completion of the violation check. | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityCompareResponse = Initialize-IdentityCompareResponse  -AccessItemDiff null
```

- Convert the resource to JSON
```powershell
$IdentityCompareResponse | ConvertTo-JSON
```


[[Back to top]](#) 

