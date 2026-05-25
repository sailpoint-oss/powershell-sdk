---
id: v2026-intel-identity-ambiguous-body
title: IntelIdentityAmbiguousBody
pagination_label: IntelIdentityAmbiguousBody
sidebar_label: IntelIdentityAmbiguousBody
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelIdentityAmbiguousBody', 'V2026IntelIdentityAmbiguousBody'] 
slug: /tools/sdk/powershell/v2026/models/intel-identity-ambiguous-body
tags: ['SDK', 'Software Development Kit', 'IntelIdentityAmbiguousBody', 'V2026IntelIdentityAmbiguousBody']
---


# IntelIdentityAmbiguousBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DetailCode** |  **Enum** [  "IDC_IDENTITY_AMBIGUOUS" ] | Constant detail code indicating that more than one identity matched the filter. | [required]
**Message** | **String** | Optional explanatory text describing why the filter was considered ambiguous. | [optional] 
**Candidates** | [**[]IntelIdentityAmbiguousCandidate**](intel-identity-ambiguous-candidate) | Collection of identities that matched the ambiguous filter expression. | [required]

## Examples

- Prepare the resource
```powershell
$IntelIdentityAmbiguousBody = Initialize-V2026IntelIdentityAmbiguousBody  -DetailCode IDC_IDENTITY_AMBIGUOUS `
 -Message Multiple identities matched the supplied SCIM filter expression. `
 -Candidates [{id=ef38f94347e94562b5bb8424a56397d8, displayName=Jane Example}, {id=ef38f94347e94562b5bb8424a56397d9, displayName=J. Example}]
```

- Convert the resource to JSON
```powershell
$IntelIdentityAmbiguousBody | ConvertTo-JSON
```


[[Back to top]](#) 

