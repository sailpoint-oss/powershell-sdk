---
id: reassigninput
title: Reassigninput
pagination_label: Reassigninput
sidebar_label: Reassigninput
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Reassigninput', 'Reassigninput'] 
slug: /tools/sdk/powershell/sodviolations/models/reassigninput
tags: ['SDK', 'Software Development Kit', 'Reassigninput', 'Reassigninput']
---


# Reassigninput

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssigneeId** | **String** | The unique identifier of the identity or governance group receiving the violation. | [required]
**AssigneeType** |  **Enum** [  "IDENTITY",    "GOVERNANCE_GROUP" ] | The type of assignee receiving the violation. | [required]

## Examples

- Prepare the resource
```powershell
$Reassigninput = Initialize-Reassigninput  -AssigneeId 3e07886555ed43cfb83c85c58d2016e6 `
 -AssigneeType IDENTITY
```

- Convert the resource to JSON
```powershell
$Reassigninput | ConvertTo-JSON
```


[[Back to top]](#) 

