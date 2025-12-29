---
id: beta-sod-exempt-criteria2
title: SodExemptCriteria2
pagination_label: SodExemptCriteria2
sidebar_label: SodExemptCriteria2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SodExemptCriteria2', 'BetaSodExemptCriteria2'] 
slug: /tools/sdk/powershell/beta/models/sod-exempt-criteria2
tags: ['SDK', 'Software Development Kit', 'SodExemptCriteria2', 'BetaSodExemptCriteria2']
---


# SodExemptCriteria2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Existing** | **Boolean** | If the entitlement already belonged to the user or not. | [optional] [default to $false]
**Type** | [**DtoType**](dto-type) |  | [optional] 
**Id** | **String** | Entitlement ID | [optional] 
**Name** | **String** | Entitlement name | [optional] 

## Examples

- Prepare the resource
```powershell
$SodExemptCriteria2 = Initialize-BetaSodExemptCriteria2  -Existing true `
 -Type null `
 -Id 2c918085771e9d3301773b3cb66f6398 `
 -Name My HR Entitlement
```

- Convert the resource to JSON
```powershell
$SodExemptCriteria2 | ConvertTo-JSON
```


[[Back to top]](#) 

