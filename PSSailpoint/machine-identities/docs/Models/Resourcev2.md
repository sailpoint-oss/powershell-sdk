---
id: resourcev2
title: Resourcev2
pagination_label: Resourcev2
sidebar_label: Resourcev2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Resourcev2', 'Resourcev2'] 
slug: /tools/sdk/powershell/machineidentities/models/resourcev2
tags: ['SDK', 'Software Development Kit', 'Resourcev2', 'Resourcev2']
---


# Resourcev2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The source resource identifier. | [optional] 
**Type** | **String** | The type of the source resource. | [optional] 
**Name** | **String** | The display name of the source resource. | [optional] 
**Features** | **[]String** | The set of features supported by the source resource. | [optional] 

## Examples

- Prepare the resource
```powershell
$Resourcev2 = Initialize-Resourcev2  -Id 8886e5e3-63d0-462f-a195-d98da885b8dc `
 -Type aws:iam-role `
 -Name nightly-batch-role `
 -Features ["PROVISIONING","AUTHENTICATION"]
```

- Convert the resource to JSON
```powershell
$Resourcev2 | ConvertTo-JSON
```


[[Back to top]](#) 

