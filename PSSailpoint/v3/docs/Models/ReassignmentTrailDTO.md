---
id: reassignment-trail-dto
title: ReassignmentTrailDTO
pagination_label: ReassignmentTrailDTO
sidebar_label: ReassignmentTrailDTO
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ReassignmentTrailDTO', 'ReassignmentTrailDTO'] 
slug: /tools/sdk/powershell/v3/models/reassignment-trail-dto
tags: ['SDK', 'Software Development Kit', 'ReassignmentTrailDTO', 'ReassignmentTrailDTO']
---


# ReassignmentTrailDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PreviousOwner** | **String** | The ID of previous owner identity. | [optional] 
**NewOwner** | **String** | The ID of new owner identity. | [optional] 
**ReassignmentType** | **String** | The type of reassignment. | [optional] 

## Examples

- Prepare the resource
```powershell
$ReassignmentTrailDTO = Initialize-ReassignmentTrailDTO  -PreviousOwner ef38f94347e94562b5bb8424a56397d8 `
 -NewOwner ef38f94347e94562b5bb8424a56397a3 `
 -ReassignmentType AUTOMATIC_REASSIGNMENT
```

- Convert the resource to JSON
```powershell
$ReassignmentTrailDTO | ConvertTo-JSON
```


[[Back to top]](#) 

