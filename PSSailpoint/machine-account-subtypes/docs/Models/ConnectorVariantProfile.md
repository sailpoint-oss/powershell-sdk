---
id: connector-variant-profile
title: ConnectorVariantProfile
pagination_label: ConnectorVariantProfile
sidebar_label: ConnectorVariantProfile
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ConnectorVariantProfile', 'ConnectorVariantProfile'] 
slug: /tools/sdk/powershell/machineaccountsubtypes/models/connector-variant-profile
tags: ['SDK', 'Software Development Kit', 'ConnectorVariantProfile', 'ConnectorVariantProfile']
---


# ConnectorVariantProfile

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Unique identifier of the connector variant profile. | [optional] 
**ConnectorType** | **String** | Connector type of the variant profile, for example `JDBC`. | [optional] [default to ""]
**Variant** | **String** | Variant name within the connector type, for example `MySql`. | [optional] [default to ""]

## Examples

- Prepare the resource
```powershell
$ConnectorVariantProfile = Initialize-ConnectorVariantProfile  -Id 65de7634-d315-482c-aad4-7fdbd1e42056 `
 -ConnectorType JDBC `
 -Variant MySql
```

- Convert the resource to JSON
```powershell
$ConnectorVariantProfile | ConvertTo-JSON
```


[[Back to top]](#) 

