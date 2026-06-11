---
id: get-machine-classification-config-v1429-response
title: GetMachineClassificationConfigV1429Response
pagination_label: GetMachineClassificationConfigV1429Response
sidebar_label: GetMachineClassificationConfigV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetMachineClassificationConfigV1429Response', 'GetMachineClassificationConfigV1429Response'] 
slug: /tools/sdk/powershell/machineclassificationconfigv1/models/get-machine-classification-config-v1429-response
tags: ['SDK', 'Software Development Kit', 'GetMachineClassificationConfigV1429Response', 'GetMachineClassificationConfigV1429Response']
---


# GetMachineClassificationConfigV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetMachineClassificationConfigV1429Response = Initialize-GetMachineClassificationConfigV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$GetMachineClassificationConfigV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

