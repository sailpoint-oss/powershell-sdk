---
id: sod-violation-created-payload-owner
title: SODViolationCreatedPayloadOwner
pagination_label: SODViolationCreatedPayloadOwner
sidebar_label: SODViolationCreatedPayloadOwner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SODViolationCreatedPayloadOwner', 'SODViolationCreatedPayloadOwner'] 
slug: /tools/sdk/powershell/triggers/models/sod-violation-created-payload-owner
tags: ['SDK', 'Software Development Kit', 'SODViolationCreatedPayloadOwner', 'SODViolationCreatedPayloadOwner']
---


# SODViolationCreatedPayloadOwner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Owner ID. | [optional] 
**Type** |  **Enum** [  "IDENTITY",    "GOVERNANCE_GROUP" ] | DTO type of the owner reference. | [optional] 

## Examples

- Prepare the resource
```powershell
$SODViolationCreatedPayloadOwner = Initialize-SODViolationCreatedPayloadOwner  -Id 2c918088837fe14901838062029a04bf `
 -Type IDENTITY
```

- Convert the resource to JSON
```powershell
$SODViolationCreatedPayloadOwner | ConvertTo-JSON
```


[[Back to top]](#) 

