---
id: reassignment
title: Reassignment
pagination_label: Reassignment
sidebar_label: Reassignment
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Reassignment', 'Reassignment'] 
slug: /tools/sdk/powershell/govcertification/models/reassignment
tags: ['SDK', 'Software Development Kit', 'Reassignment', 'Reassignment']
---


# Reassignment

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ReassignedFrom** | [**CertificationReference**](certification-reference) |  | [optional] 
**Comment** | **String** | Comments from the previous reviewer. | [optional] 
**ReassignmentTrails** | [**[]ReassignmentTrail**](reassignment-trail) | The reassignmentTrail | [optional] 

## Examples

- Prepare the resource
```powershell
$Reassignment = Initialize-Reassignment  -ReassignedFrom null `
 -Comment Please review `
 -ReassignmentTrails null
```

- Convert the resource to JSON
```powershell
$Reassignment | ConvertTo-JSON
```


[[Back to top]](#) 

