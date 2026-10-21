---
id: reassignment-trail-reviewer
title: ReassignmentTrailReviewer
pagination_label: ReassignmentTrailReviewer
sidebar_label: ReassignmentTrailReviewer
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ReassignmentTrailReviewer', 'ReassignmentTrailReviewer'] 
slug: /tools/sdk/powershell/govcertification/models/reassignment-trail-reviewer
tags: ['SDK', 'Software Development Kit', 'ReassignmentTrailReviewer', 'ReassignmentTrailReviewer']
---


# ReassignmentTrailReviewer

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The ID of the Identity | [optional] 
**Name** | **String** | Human-readable display name of the Identity | [optional] 

## Examples

- Prepare the resource
```powershell
$ReassignmentTrailReviewer = Initialize-ReassignmentTrailReviewer  -Id 0fbe863c063c4c88a35fd7f17e8a3df5 `
 -Name William Wilson
```

- Convert the resource to JSON
```powershell
$ReassignmentTrailReviewer | ConvertTo-JSON
```


[[Back to top]](#) 

