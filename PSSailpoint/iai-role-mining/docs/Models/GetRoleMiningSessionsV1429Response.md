---
id: get-role-mining-sessions-v1429-response
title: GetRoleMiningSessionsV1429Response
pagination_label: GetRoleMiningSessionsV1429Response
sidebar_label: GetRoleMiningSessionsV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetRoleMiningSessionsV1429Response', 'GetRoleMiningSessionsV1429Response'] 
slug: /tools/sdk/powershell/iairoleminingv1/models/get-role-mining-sessions-v1429-response
tags: ['SDK', 'Software Development Kit', 'GetRoleMiningSessionsV1429Response', 'GetRoleMiningSessionsV1429Response']
---


# GetRoleMiningSessionsV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetRoleMiningSessionsV1429Response = Initialize-GetRoleMiningSessionsV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$GetRoleMiningSessionsV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

