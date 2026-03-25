---
id: v2026-common-access-id-status
title: CommonAccessIDStatus
pagination_label: CommonAccessIDStatus
sidebar_label: CommonAccessIDStatus
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CommonAccessIDStatus', 'V2026CommonAccessIDStatus'] 
slug: /tools/sdk/powershell/v2026/models/common-access-id-status
tags: ['SDK', 'Software Development Kit', 'CommonAccessIDStatus', 'V2026CommonAccessIDStatus']
---


# CommonAccessIDStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConfirmedIds** | **[]String** | List of confirmed common access ids. | [optional] 
**DeniedIds** | **[]String** | List of denied common access ids. | [optional] 

## Examples

- Prepare the resource
```powershell
$CommonAccessIDStatus = Initialize-V2026CommonAccessIDStatus  -ConfirmedIds null `
 -DeniedIds null
```

- Convert the resource to JSON
```powershell
$CommonAccessIDStatus | ConvertTo-JSON
```


[[Back to top]](#) 

