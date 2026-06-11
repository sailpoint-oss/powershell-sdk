---
id: get-profile-config-list-v1429-response
title: GetProfileConfigListV1429Response
pagination_label: GetProfileConfigListV1429Response
sidebar_label: GetProfileConfigListV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetProfileConfigListV1429Response', 'GetProfileConfigListV1429Response'] 
slug: /tools/sdk/powershell/authprofilev1/models/get-profile-config-list-v1429-response
tags: ['SDK', 'Software Development Kit', 'GetProfileConfigListV1429Response', 'GetProfileConfigListV1429Response']
---


# GetProfileConfigListV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetProfileConfigListV1429Response = Initialize-GetProfileConfigListV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$GetProfileConfigListV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

