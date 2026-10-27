---
id: get-machine-mapping-target-identity-attributes-v1401-response
title: GetMachineMappingTargetIdentityAttributesV1401Response
pagination_label: GetMachineMappingTargetIdentityAttributesV1401Response
sidebar_label: GetMachineMappingTargetIdentityAttributesV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetMachineMappingTargetIdentityAttributesV1401Response', 'GetMachineMappingTargetIdentityAttributesV1401Response'] 
slug: /tools/sdk/powershell/machinemappingmetadata/models/get-machine-mapping-target-identity-attributes-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetMachineMappingTargetIdentityAttributesV1401Response', 'GetMachineMappingTargetIdentityAttributesV1401Response']
---


# GetMachineMappingTargetIdentityAttributesV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetMachineMappingTargetIdentityAttributesV1401Response = Initialize-GetMachineMappingTargetIdentityAttributesV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetMachineMappingTargetIdentityAttributesV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

