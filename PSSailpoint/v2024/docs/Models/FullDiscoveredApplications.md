---
id: v2024-full-discovered-applications
title: FullDiscoveredApplications
pagination_label: FullDiscoveredApplications
sidebar_label: FullDiscoveredApplications
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'FullDiscoveredApplications', 'V2024FullDiscoveredApplications'] 
slug: /tools/sdk/powershell/v2024/models/full-discovered-applications
tags: ['SDK', 'Software Development Kit', 'FullDiscoveredApplications', 'V2024FullDiscoveredApplications']
---


# FullDiscoveredApplications

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
**AssociatedSources** | **[]String** | List of associated sources related to this discovered application. | [optional] 
**RiskScore** | **Int32** | The risk score of the application ranging from 0-100, 100 being highest risk. | [optional] 
**IsBusiness** | **Boolean** | Indicates whether the application is used for business purposes. | [optional] [default to $true]
**TotalSigninsCount** | **Int32** | The total number of sign-in accounts for the application. | [optional] 
**RiskLevel** |  **Enum** [  "High",    "Medium",    "Low" ] | The risk level of the application. | [optional] 

## Examples

- Prepare the resource
```powershell
$FullDiscoveredApplications = Initialize-V2024FullDiscoveredApplications  -Id null `
 -Name ExampleApp `
 -DiscoverySource csv `
 -DiscoveredVendor ExampleVendor `
 -Description An application for managing examples. `
 -RecommendedConnectors [ConnectorA, ConnectorB] `
 -DiscoveredAt 2023-01-01T12:00Z `
 -CreatedAt 2023-01-01T12:00Z `
 -Status ACTIVE `
 -AssociatedSources [e0cc5d7d-bf7f-4f81-b2af-8885b09d9923, a0303682-5e4a-44f7-bdc2-6ce6112549c1] `
 -RiskScore 1 `
 -IsBusiness false `
 -TotalSigninsCount 1 `
 -RiskLevel Low
```

- Convert the resource to JSON
```powershell
$FullDiscoveredApplications | ConvertTo-JSON
```


[[Back to top]](#) 

