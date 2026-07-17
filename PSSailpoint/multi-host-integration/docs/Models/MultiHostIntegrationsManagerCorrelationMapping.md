---
id: multi-host-integrations-manager-correlation-mapping
title: MultiHostIntegrationsManagerCorrelationMapping
pagination_label: MultiHostIntegrationsManagerCorrelationMapping
sidebar_label: MultiHostIntegrationsManagerCorrelationMapping
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'MultiHostIntegrationsManagerCorrelationMapping', 'MultiHostIntegrationsManagerCorrelationMapping'] 
slug: /tools/sdk/powershell/multihostintegration/models/multi-host-integrations-manager-correlation-mapping
tags: ['SDK', 'Software Development Kit', 'MultiHostIntegrationsManagerCorrelationMapping', 'MultiHostIntegrationsManagerCorrelationMapping']
---


# MultiHostIntegrationsManagerCorrelationMapping

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountAttributeName** | **String** | Name of the attribute to use for manager correlation. The value found on the account attribute will be used to lookup the manager's identity. | [optional] 
**IdentityAttributeName** | **String** | Name of the identity attribute to search when trying to find a manager using the value from the accountAttribute. | [optional] 

## Examples

- Prepare the resource
```powershell
$MultiHostIntegrationsManagerCorrelationMapping = Initialize-MultiHostIntegrationsManagerCorrelationMapping  -AccountAttributeName manager `
 -IdentityAttributeName manager
```

- Convert the resource to JSON
```powershell
$MultiHostIntegrationsManagerCorrelationMapping | ConvertTo-JSON
```


[[Back to top]](#) 

