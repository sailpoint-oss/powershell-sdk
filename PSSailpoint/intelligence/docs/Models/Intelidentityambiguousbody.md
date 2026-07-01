---
id: intelidentityambiguousbody
title: Intelidentityambiguousbody
pagination_label: Intelidentityambiguousbody
sidebar_label: Intelidentityambiguousbody
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelidentityambiguousbody', 'Intelidentityambiguousbody'] 
slug: /tools/sdk/powershell/intelligence/models/intelidentityambiguousbody
tags: ['SDK', 'Software Development Kit', 'Intelidentityambiguousbody', 'Intelidentityambiguousbody']
---


# Intelidentityambiguousbody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DetailCode** |  **Enum** [  "IDC_IDENTITY_AMBIGUOUS" ] | Constant detail code indicating that more than one identity matched the filter. | [required]
**Message** | **String** | Optional explanatory text describing why the filter was considered ambiguous. | [optional] 
**Candidates** | [**[]Intelidentityambiguouscandidate**](intelidentityambiguouscandidate) | Collection of identities that matched the ambiguous filter expression. | [required]

## Examples

- Prepare the resource
```powershell
$Intelidentityambiguousbody = Initialize-Intelidentityambiguousbody  -DetailCode IDC_IDENTITY_AMBIGUOUS `
 -Message Multiple identities matched the supplied SCIM filter expression. `
 -Candidates [{"id":"ef38f94347e94562b5bb8424a56397d8","displayName":"Jane Example"},{"id":"ef38f94347e94562b5bb8424a56397d9","displayName":"J. Example"}]
```

- Convert the resource to JSON
```powershell
$Intelidentityambiguousbody | ConvertTo-JSON
```


[[Back to top]](#) 

