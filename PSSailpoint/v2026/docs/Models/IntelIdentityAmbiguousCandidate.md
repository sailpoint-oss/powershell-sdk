---
id: v2026-intel-identity-ambiguous-candidate
title: IntelIdentityAmbiguousCandidate
pagination_label: IntelIdentityAmbiguousCandidate
sidebar_label: IntelIdentityAmbiguousCandidate
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelIdentityAmbiguousCandidate', 'V2026IntelIdentityAmbiguousCandidate'] 
slug: /tools/sdk/powershell/v2026/models/intel-identity-ambiguous-candidate
tags: ['SDK', 'Software Development Kit', 'IntelIdentityAmbiguousCandidate', 'V2026IntelIdentityAmbiguousCandidate']
---


# IntelIdentityAmbiguousCandidate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Identity identifier for one of the ambiguous matching identities. | [required]
**DisplayName** | **String** | Display name for the ambiguous matching identity when available. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelIdentityAmbiguousCandidate = Initialize-V2026IntelIdentityAmbiguousCandidate  -Id ef38f94347e94562b5bb8424a56397d8 `
 -DisplayName Jane Example
```

- Convert the resource to JSON
```powershell
$IntelIdentityAmbiguousCandidate | ConvertTo-JSON
```


[[Back to top]](#) 

