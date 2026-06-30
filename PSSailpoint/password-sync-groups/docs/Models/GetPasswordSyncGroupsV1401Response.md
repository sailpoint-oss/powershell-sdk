---
id: get-password-sync-groups-v1401-response
title: GetPasswordSyncGroupsV1401Response
pagination_label: GetPasswordSyncGroupsV1401Response
sidebar_label: GetPasswordSyncGroupsV1401Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetPasswordSyncGroupsV1401Response', 'GetPasswordSyncGroupsV1401Response'] 
slug: /tools/sdk/powershell/passwordsyncgroups/models/get-password-sync-groups-v1401-response
tags: ['SDK', 'Software Development Kit', 'GetPasswordSyncGroupsV1401Response', 'GetPasswordSyncGroupsV1401Response']
---


# GetPasswordSyncGroupsV1401Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarError** | **AnyType** | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetPasswordSyncGroupsV1401Response = Initialize-GetPasswordSyncGroupsV1401Response  -VarError JWT validation failed: JWT is expired
```

- Convert the resource to JSON
```powershell
$GetPasswordSyncGroupsV1401Response | ConvertTo-JSON
```


[[Back to top]](#) 

