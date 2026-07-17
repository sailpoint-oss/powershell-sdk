---
id: sod-policy-dto2
title: SodPolicyDto2
pagination_label: SodPolicyDto2
sidebar_label: SodPolicyDto2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SodPolicyDto2', 'SodPolicyDto2'] 
slug: /tools/sdk/powershell/sodviolations/models/sod-policy-dto2
tags: ['SDK', 'Software Development Kit', 'SodPolicyDto2', 'SodPolicyDto2']
---


# SodPolicyDto2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** |  **Enum** [  "SOD_POLICY" ] | SOD policy DTO type. | [optional] 
**Id** | **String** | SOD policy ID. | [optional] 
**Name** | **String** | SOD policy display name. | [optional] 

## Examples

- Prepare the resource
```powershell
$SodPolicyDto2 = Initialize-SodPolicyDto2  -Type SOD_POLICY `
 -Id 0f11f2a4-7c94-4bf3-a2bd-742580fe3bde `
 -Name Business SOD Policy
```

- Convert the resource to JSON
```powershell
$SodPolicyDto2 | ConvertTo-JSON
```


[[Back to top]](#) 

