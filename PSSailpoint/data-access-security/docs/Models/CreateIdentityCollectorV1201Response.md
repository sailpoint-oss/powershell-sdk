---
id: create-identity-collector-v1201-response
title: CreateIdentityCollectorV1201Response
pagination_label: CreateIdentityCollectorV1201Response
sidebar_label: CreateIdentityCollectorV1201Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateIdentityCollectorV1201Response', 'CreateIdentityCollectorV1201Response'] 
slug: /tools/sdk/powershell/dataaccesssecurity/models/create-identity-collector-v1201-response
tags: ['SDK', 'Software Development Kit', 'CreateIdentityCollectorV1201Response', 'CreateIdentityCollectorV1201Response']
---


# CreateIdentityCollectorV1201Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **Int64** | The unique identifier of the created identity collector. | [optional] 
**Name** | **String** | The display name of the created identity collector. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateIdentityCollectorV1201Response = Initialize-CreateIdentityCollectorV1201Response  -Id 12345 `
 -Name Active Directory Identity Collector
```

- Convert the resource to JSON
```powershell
$CreateIdentityCollectorV1201Response | ConvertTo-JSON
```


[[Back to top]](#) 

