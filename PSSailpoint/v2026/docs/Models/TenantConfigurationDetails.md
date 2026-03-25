---
id: v2026-tenant-configuration-details
title: TenantConfigurationDetails
pagination_label: TenantConfigurationDetails
sidebar_label: TenantConfigurationDetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'TenantConfigurationDetails', 'V2026TenantConfigurationDetails'] 
slug: /tools/sdk/powershell/v2026/models/tenant-configuration-details
tags: ['SDK', 'Software Development Kit', 'TenantConfigurationDetails', 'V2026TenantConfigurationDetails']
---


# TenantConfigurationDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Disabled** | **Boolean** | Flag to determine if Reassignment Configuration is enabled or disabled for a tenant.  When this flag is set to true, Reassignment Configuration is disabled. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$TenantConfigurationDetails = Initialize-V2026TenantConfigurationDetails  -Disabled true
```

- Convert the resource to JSON
```powershell
$TenantConfigurationDetails | ConvertTo-JSON
```


[[Back to top]](#) 

