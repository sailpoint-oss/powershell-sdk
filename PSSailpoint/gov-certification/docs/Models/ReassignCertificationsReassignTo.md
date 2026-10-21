---
id: reassign-certifications-reassign-to
title: ReassignCertificationsReassignTo
pagination_label: ReassignCertificationsReassignTo
sidebar_label: ReassignCertificationsReassignTo
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ReassignCertificationsReassignTo', 'ReassignCertificationsReassignTo'] 
slug: /tools/sdk/powershell/govcertification/models/reassign-certifications-reassign-to
tags: ['SDK', 'Software Development Kit', 'ReassignCertificationsReassignTo', 'ReassignCertificationsReassignTo']
---


# ReassignCertificationsReassignTo

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The identity ID to which the review is being assigned. | [optional] 
**Type** |  **Enum** [  "IDENTITY" ] | The type of the ID provided | [optional] 

## Examples

- Prepare the resource
```powershell
$ReassignCertificationsReassignTo = Initialize-ReassignCertificationsReassignTo  -Id 0fbe863c-063c-4c88-a35f-d7f17e8a3df5 `
 -Type IDENTITY
```

- Convert the resource to JSON
```powershell
$ReassignCertificationsReassignTo | ConvertTo-JSON
```


[[Back to top]](#) 

