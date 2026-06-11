---
id: misbulkupdaterequest
title: Misbulkupdaterequest
pagination_label: Misbulkupdaterequest
sidebar_label: Misbulkupdaterequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Misbulkupdaterequest', 'Misbulkupdaterequest'] 
slug: /tools/sdk/powershell/machineaccountsv1/models/misbulkupdaterequest
tags: ['SDK', 'Software Development Kit', 'Misbulkupdaterequest', 'Misbulkupdaterequest']
---


# Misbulkupdaterequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Ids** | **[]String** | Machine identity or machine account IDs to update. | [required]
**JsonPatch** | [**[]Jsonpatchoperation**](jsonpatchoperation) | JSON Patch operations to apply to each ID in the request (RFC 6902). | [required]

## Examples

- Prepare the resource
```powershell
$Misbulkupdaterequest = Initialize-Misbulkupdaterequest  -Ids ["ef38f94347e94562b5bb8424a56397d8"] `
 -JsonPatch [{"op":"replace","path":"/description","value":"Updated description"}]
```

- Convert the resource to JSON
```powershell
$Misbulkupdaterequest | ConvertTo-JSON
```


[[Back to top]](#) 

