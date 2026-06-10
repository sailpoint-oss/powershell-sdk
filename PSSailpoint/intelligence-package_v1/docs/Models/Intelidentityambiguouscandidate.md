---
id: intelidentityambiguouscandidate
title: Intelidentityambiguouscandidate
pagination_label: Intelidentityambiguouscandidate
sidebar_label: Intelidentityambiguouscandidate
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelidentityambiguouscandidate', 'Intelidentityambiguouscandidate'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/intelidentityambiguouscandidate
tags: ['SDK', 'Software Development Kit', 'Intelidentityambiguouscandidate', 'Intelidentityambiguouscandidate']
---


# Intelidentityambiguouscandidate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Identity identifier for one of the ambiguous matching identities. | [required]
**DisplayName** | **String** | Display name for the ambiguous matching identity when available. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelidentityambiguouscandidate = Initialize-Intelidentityambiguouscandidate  -Id ef38f94347e94562b5bb8424a56397d8 `
 -DisplayName Jane Example
```

- Convert the resource to JSON
```powershell
$Intelidentityambiguouscandidate | ConvertTo-JSON
```


[[Back to top]](#) 

