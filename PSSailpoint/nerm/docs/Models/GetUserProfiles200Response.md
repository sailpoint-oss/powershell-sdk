---
id: nerm-get-user-profiles200-response
title: GetUserProfiles200Response
pagination_label: GetUserProfiles200Response
sidebar_label: GetUserProfiles200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetUserProfiles200Response', 'NERMGetUserProfiles200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-user-profiles200-response
tags: ['SDK', 'Software Development Kit', 'GetUserProfiles200Response', 'NERMGetUserProfiles200Response']
---


# GetUserProfiles200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UserProfiles** | [**[]UserProfile**](user-profile) |  | [optional] 
**Metadata** | [**Metadata**](metadata) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetUserProfiles200Response = Initialize-NERMGetUserProfiles200Response  -UserProfiles null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetUserProfiles200Response | ConvertTo-JSON
```


[[Back to top]](#) 

