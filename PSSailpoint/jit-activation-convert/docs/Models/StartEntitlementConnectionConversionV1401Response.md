---
id: start-entitlement-connection-conversion-v1401-response
title: StartEntitlementConnectionConversionV1401Response
pagination_label: StartEntitlementConnectionConversionV1401Response
sidebar_label: StartEntitlementConnectionConversionV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'StartEntitlementConnectionConversionV1401Response', 'StartEntitlementConnectionConversionV1401Response'] 
slug: /tools/sdk/powershell/jitactivationconvert/models/start-entitlement-connection-conversion-v1401-response
tags: ['SDK', 'Software Development Kit', 'StartEntitlementConnectionConversionV1401Response', 'StartEntitlementConnectionConversionV1401Response']
---


# StartEntitlementConnectionConversionV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$StartEntitlementConnectionConversionV1401Response = Initialize-StartEntitlementConnectionConversionV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$StartEntitlementConnectionConversionV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

