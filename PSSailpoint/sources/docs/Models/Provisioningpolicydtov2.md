---
id: provisioningpolicydtov2
title: Provisioningpolicydtov2
pagination_label: Provisioningpolicydtov2
sidebar_label: Provisioningpolicydtov2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Provisioningpolicydtov2', 'Provisioningpolicydtov2'] 
slug: /tools/sdk/powershell/sources/models/provisioningpolicydtov2
tags: ['SDK', 'Software Development Kit', 'Provisioningpolicydtov2', 'Provisioningpolicydtov2']
---


# Provisioningpolicydtov2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the provisioning policy. | [optional] 
**Name** | **String** | the provisioning policy name | [required]
**SubtypeId** | **String** | Subtype ID for which provisioning policy will be created when usageType is CREATE_MACHINE_ACCOUNT. | [optional] 
**Description** | **String** | the description of the provisioning policy | [optional] 
**UsageType** | **Usagetype** |  | [optional] 
**Fields** | [**[]Fielddetailsdtov2**](fielddetailsdtov2) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Provisioningpolicydtov2 = Initialize-Provisioningpolicydtov2  -Id d7ae9ea3-507f-4d00-9d4f-b4464b344b88 `
 -Name example provisioning policy for inactive identities `
 -SubtypeId d7ae9ea3-507f-4d00-9d4f-b4464b344b88 `
 -Description this provisioning policy creates access based on an identity going inactive `
 -UsageType null `
 -Fields null
```

- Convert the resource to JSON
```powershell
$Provisioningpolicydtov2 | ConvertTo-JSON
```


[[Back to top]](#) 

