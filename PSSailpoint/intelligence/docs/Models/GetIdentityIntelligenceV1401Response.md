---
id: get-identity-intelligence-v1401-response
title: GetIdentityIntelligenceV1401Response
pagination_label: GetIdentityIntelligenceV1401Response
sidebar_label: GetIdentityIntelligenceV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetIdentityIntelligenceV1401Response', 'GetIdentityIntelligenceV1401Response'] 
slug: /tools/sdk/powershell/intelligence/models/get-identity-intelligence-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetIdentityIntelligenceV1401Response', 'GetIdentityIntelligenceV1401Response']
---


# GetIdentityIntelligenceV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetIdentityIntelligenceV1401Response = Initialize-GetIdentityIntelligenceV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetIdentityIntelligenceV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

