---
id: tenant-configuration-response
title: TenantConfigurationResponse
pagination_label: TenantConfigurationResponse
sidebar_label: TenantConfigurationResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'TenantConfigurationResponse', 'TenantConfigurationResponse'] 
slug: /tools/sdk/powershell/workreassignment/models/tenant-configuration-response
tags: ['SDK', 'Software Development Kit', 'TenantConfigurationResponse', 'TenantConfigurationResponse']
---


# TenantConfigurationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AuditDetails** | [**AuditDetails**](audit-details) |  | [optional] 
**ConfigDetails** | [**TenantConfigurationDetails**](tenant-configuration-details) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$TenantConfigurationResponse = Initialize-TenantConfigurationResponse  -AuditDetails null `
 -ConfigDetails null
```

- Convert the resource to JSON
```powershell
$TenantConfigurationResponse | ConvertTo-JSON
```


[[Back to top]](#) 

