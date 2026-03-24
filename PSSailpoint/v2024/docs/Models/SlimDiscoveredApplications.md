---
id: v2024-slim-discovered-applications
title: SlimDiscoveredApplications
pagination_label: SlimDiscoveredApplications
sidebar_label: SlimDiscoveredApplications
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'SlimDiscoveredApplications', 'V2024SlimDiscoveredApplications'] 
slug: /tools/sdk/powershell/v2024/models/slim-discovered-applications
tags: ['SDK', 'Software Development Kit', 'SlimDiscoveredApplications', 'V2024SlimDiscoveredApplications']
---


# SlimDiscoveredApplications

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Unique identifier for the discovered application. | [optional] 
**Name** | **String** | Name of the discovered application. | [optional] 
**DiscoverySource** | **String** | Source from which the application was discovered. | [optional] 
**DiscoveredVendor** | **String** | The vendor associated with the discovered application. | [optional] 
**Description** | **String** | A brief description of the discovered application. | [optional] 
**RecommendedConnectors** | **[]String** | List of recommended connectors for the application. | [optional] 
**DiscoveredAt** | **System.DateTime** | The timestamp when the application was last received via an entitlement aggregation invocation  or a manual csv upload, in ISO 8601 format. | [optional] 
**CreatedAt** | **System.DateTime** | The timestamp when the application was first discovered, in ISO 8601 format. | [optional] 
**Status** | **String** | The status of an application within the discovery source.  By default this field is set to ""ACTIVE"" when the application is discovered.  If an application has been deleted from within the discovery source, the status will be set to ""INACTIVE"". | [optional] 
**RiskScore** | **Int32** | The risk score of the application ranging from 0-100, 100 being highest risk. | [optional] 
**IsBusiness** | **Boolean** | Indicates whether the application is used for business purposes. | [optional] [default to $true]
**TotalSigninsCount** | **Int32** | The total number of sign-in accounts for the application. | [optional] 
**RiskLevel** |  **Enum** [  "High",    "Medium",    "Low" ] | The risk level of the application. | [optional] 

## Examples

- Prepare the resource
```powershell
$SlimDiscoveredApplications = Initialize-V2024SlimDiscoveredApplications  -Id null `
 -Name ExampleApp `
 -DiscoverySource csv `
 -DiscoveredVendor ExampleVendor `
 -Description An application for managing examples. `
 -RecommendedConnectors [ConnectorA, ConnectorB] `
 -DiscoveredAt 2023-01-01T12:00Z `
 -CreatedAt 2023-01-01T12:00Z `
 -Status ACTIVE `
 -RiskScore 1 `
 -IsBusiness false `
 -TotalSigninsCount 1 `
 -RiskLevel Low
```

- Convert the resource to JSON
```powershell
$SlimDiscoveredApplications | ConvertTo-JSON
```


[[Back to top]](#) 

