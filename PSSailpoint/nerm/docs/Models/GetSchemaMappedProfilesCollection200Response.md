---
id: nerm-get-schema-mapped-profiles-collection200-response
title: GetSchemaMappedProfilesCollection200Response
pagination_label: GetSchemaMappedProfilesCollection200Response
sidebar_label: GetSchemaMappedProfilesCollection200Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetSchemaMappedProfilesCollection200Response', 'NERMGetSchemaMappedProfilesCollection200Response'] 
slug: /tools/sdk/powershell/nerm/models/get-schema-mapped-profiles-collection200-response
tags: ['SDK', 'Software Development Kit', 'GetSchemaMappedProfilesCollection200Response', 'NERMGetSchemaMappedProfilesCollection200Response']
---


# GetSchemaMappedProfilesCollection200Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Profiles** | [**[]ModelProfile**](model-profile) |  | [optional] 
**Metadata** | [**MetadataWithAfterId**](metadata-with-after-id) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GetSchemaMappedProfilesCollection200Response = Initialize-NERMGetSchemaMappedProfilesCollection200Response  -Profiles null `
 -Metadata null
```

- Convert the resource to JSON
```powershell
$GetSchemaMappedProfilesCollection200Response | ConvertTo-JSON
```


[[Back to top]](#) 

