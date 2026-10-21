---
id: certification-reference
title: CertificationReference
pagination_label: CertificationReference
sidebar_label: CertificationReference
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CertificationReference', 'CertificationReference'] 
slug: /tools/sdk/powershell/govcertification/models/certification-reference
tags: ['SDK', 'Software Development Kit', 'CertificationReference', 'CertificationReference']
---


# CertificationReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CertificationId** | **String** | ID of certification for review. | [optional] 
**CertificationDisplayName** | **String** | Display name of certification for review. | [optional] 
**Reviewer** | [**CertificationReviewer**](certification-reviewer) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CertificationReference = Initialize-CertificationReference  -CertificationId 7589a83c-ec4b-4f13-8ce5-6c1a5ef0756d `
 -CertificationDisplayName Manager Access for Michael Michaels `
 -Reviewer null
```

- Convert the resource to JSON
```powershell
$CertificationReference | ConvertTo-JSON
```


[[Back to top]](#) 

