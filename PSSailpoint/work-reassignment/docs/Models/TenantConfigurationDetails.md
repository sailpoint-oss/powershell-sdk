---
id: tenant-configuration-details
title: TenantConfigurationDetails
pagination_label: TenantConfigurationDetails
sidebar_label: TenantConfigurationDetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'TenantConfigurationDetails', 'TenantConfigurationDetails'] 
slug: /tools/sdk/powershell/workreassignment/models/tenant-configuration-details
tags: ['SDK', 'Software Development Kit', 'TenantConfigurationDetails', 'TenantConfigurationDetails']
---


# TenantConfigurationDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Disabled** | **Boolean** | Flag to determine if Reassignment Configuration is enabled or disabled for a tenant.  When this flag is set to true, Reassignment Configuration is disabled. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$TenantConfigurationDetails = Initialize-TenantConfigurationDetails  -Disabled true
```

- Convert the resource to JSON
```powershell
$TenantConfigurationDetails | ConvertTo-JSON
```


[[Back to top]](#) 

