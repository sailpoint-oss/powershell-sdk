---
id: reassignment-trail
title: ReassignmentTrail
pagination_label: ReassignmentTrail
sidebar_label: ReassignmentTrail
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ReassignmentTrail', 'ReassignmentTrail'] 
slug: /tools/sdk/powershell/govcertification/models/reassignment-trail
tags: ['SDK', 'Software Development Kit', 'ReassignmentTrail', 'ReassignmentTrail']
---


# ReassignmentTrail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PreviousReviewer** | [**ReassignmentTrailReviewer**](reassignment-trail-reviewer) |  | [optional] 
**NewReviewer** | [**ReassignmentTrailReviewer**](reassignment-trail-reviewer) |  | [optional] 
**ReassignmentType** |  **Enum** [  "AUTOMATIC_REASSIGNMENT",    "MANUAL_REASSIGNMENT",    "SELF_REVIEW_DELEGATION" ] | The type of reassignment. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReassignmentTrail = Initialize-ReassignmentTrail  -PreviousReviewer null `
 -NewReviewer null `
 -ReassignmentType AUTOMATIC_REASSIGNMENT
```

- Convert the resource to JSON
```powershell
$ReassignmentTrail | ConvertTo-JSON
```


[[Back to top]](#) 

