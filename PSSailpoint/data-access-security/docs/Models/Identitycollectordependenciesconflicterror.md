---
id: identitycollectordependenciesconflicterror
title: Identitycollectordependenciesconflicterror
pagination_label: Identitycollectordependenciesconflicterror
sidebar_label: Identitycollectordependenciesconflicterror
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Identitycollectordependenciesconflicterror', 'Identitycollectordependenciesconflicterror'] 
slug: /tools/sdk/powershell/dataaccesssecurity/models/identitycollectordependenciesconflicterror
tags: ['SDK', 'Software Development Kit', 'Identitycollectordependenciesconflicterror', 'Identitycollectordependenciesconflicterror']
---


# Identitycollectordependenciesconflicterror

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DetailCode** | **String** | Fine-grained error code providing more detail of the error. | [optional] 
**TrackingId** | **String** | Unique tracking id for the error. | [optional] 
**Messages** | [**[]IdentitycollectordependenciesconflicterrorMessagesInner**](identitycollectordependenciesconflicterror-messages-inner) | Generic localized reason for error. | [optional] 
**Dependencies** | [**[]Identitycollectordependency**](identitycollectordependency) | Dependent objects blocking deletion. At most three items are returned. | [optional] 
**ExtendedDependenciesCount** | **Int32** | Number of additional dependent objects not included in `dependencies`. | [optional] 

## Examples

- Prepare the resource
```powershell
$Identitycollectordependenciesconflicterror = Initialize-Identitycollectordependenciesconflicterror  -DetailCode 409 Conflict `
 -TrackingId e7eab60924f64aa284175b9fa3309599 `
 -Messages null `
 -Dependencies null `
 -ExtendedDependenciesCount 2
```

- Convert the resource to JSON
```powershell
$Identitycollectordependenciesconflicterror | ConvertTo-JSON
```


[[Back to top]](#) 

