---
id: search-intel-identities-v1429-response
title: SearchIntelIdentitiesV1429Response
pagination_label: SearchIntelIdentitiesV1429Response
sidebar_label: SearchIntelIdentitiesV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SearchIntelIdentitiesV1429Response', 'SearchIntelIdentitiesV1429Response'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/search-intel-identities-v1429-response
tags: ['SDK', 'Software Development Kit', 'SearchIntelIdentitiesV1429Response', 'SearchIntelIdentitiesV1429Response']
---


# SearchIntelIdentitiesV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$SearchIntelIdentitiesV1429Response = Initialize-SearchIntelIdentitiesV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$SearchIntelIdentitiesV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

