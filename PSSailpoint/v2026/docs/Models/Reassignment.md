---
id: v2026-reassignment
title: Reassignment
pagination_label: Reassignment
sidebar_label: Reassignment
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Reassignment', 'V2026Reassignment'] 
slug: /tools/sdk/powershell/v2026/models/reassignment
tags: ['SDK', 'Software Development Kit', 'Reassignment', 'V2026Reassignment']
---


# Reassignment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarFrom** | [**CertificationReference**](certification-reference) |  | [optional] 
**Comment** | **String** | The comment entered when the Certification was reassigned | [optional] 

## Examples

- Prepare the resource
```powershell
$Reassignment = Initialize-V2026Reassignment  -VarFrom null `
 -Comment Reassigned for a reason
```

- Convert the resource to JSON
```powershell
$Reassignment | ConvertTo-JSON
```


[[Back to top]](#) 

