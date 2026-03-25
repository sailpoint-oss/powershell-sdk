---
id: v2026-entitlement-dto
title: EntitlementDTO
pagination_label: EntitlementDTO
sidebar_label: EntitlementDTO
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementDTO', 'V2026EntitlementDTO'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-dto
tags: ['SDK', 'Software Development Kit', 'EntitlementDTO', 'V2026EntitlementDTO']
---


# EntitlementDTO

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | System-generated unique ID of the Object | [optional] [readonly] 
**Name** | **String** | Name of the Object | [required]
**Created** | **System.DateTime** | Creation date of the Object | [optional] [readonly] 
**Modified** | **System.DateTime** | Last modification date of the Object | [optional] [readonly] 
**Attribute** | **String** | Name of the entitlement attribute | [optional] 
**Uuid** | **String** | Unique entitlement identifier within the database | [optional] 
**Value** | **String** | Raw value of the entitlement | [optional] 
**Description** | **String** | Entitlment description | [optional] 
**SourceSchemaObjectType** | **String** | Schema objectType on the given application that maps to an Account Group | [optional] 
**Privileged** | **Boolean** | Determines if this entitlement is privileged. | [optional] 
**IsGroup** | **Boolean** | True when this object is used to represent a group attribute, otherwise it represents an account attribute. For the time being, the property is always true. | [optional] 
**CloudGoverned** | **Boolean** | Determines if this entitlement is governed in the cloud. | [optional] 
**Requestable** | **Boolean** | Determines if this entitlement is requestable. | [optional] 
**CloudEligible** | **Boolean** | Determines if this entitlement is cloud eligible. | [optional] 
**Attributes** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | Entitlement attributes | [optional] 
**Source** | [**EntitlementDTOAllOfSource**](entitlement-dto-all-of-source) |  | [optional] 
**Hash** | **String** | Read-only calculated hash value of an entitlement | [optional] 
**DirectPermissions** | [**[]PermissionDto**](permission-dto) |  | [optional] 
**InheritFrom** | **[]String** | List of parent entitlements | [optional] 
**Segments** | **[]String** | List of entitlement segments | [optional] 
**LastRefresh** | **String** | Last time the entitlement was refreshed | [optional] 
**IdnServiceApp** | **String** | IDN service application | [optional] 
**IdnExceptional** | **String** | Informs whether an entitlement is a priviliged one. | [optional] 
**EntitlementitlementAggregated** | **String** | Indicates whether an entitlement was aggregated | [optional] 
**SegmentStatus** | **String** | Segment status (GLOBAL/LOCAL) | [optional] 
**Owner** | [**OwnerReferenceDto**](owner-reference-dto) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementDTO = Initialize-V2026EntitlementDTO  -Id id12345 `
 -Name aName `
 -Created 2015-05-28T14:07:17Z `
 -Modified 2015-05-28T14:07:17Z `
 -Attribute authorizationType `
 -Uuid 6a099125e1614e4c9024bff6c6159f49 `
 -Value CN=Users,dc=sailpoint,dc=com `
 -Description some entitlement description `
 -SourceSchemaObjectType group `
 -Privileged true `
 -IsGroup true `
 -CloudGoverned true `
 -Requestable true `
 -CloudEligible true `
 -Attributes {cn=Human Resources-bchun2, owner=CN=Fritz.8349b2f31e67,OU=flatfileAD,dc=flatfile,dc=endtoend,dc=com, objectguid=objectguidHuman-Resources-bchun2, description=HR-desc, sysDescriptions={en_US=HR-desc}, entitlementAggregated=true} `
 -Source null `
 -Hash 5c8b309fa18a2c76d7fbee2b9e00dba99e4c82de `
 -DirectPermissions null `
 -InheritFrom null `
 -Segments null `
 -LastRefresh 2022-06-24T16:12:53.389386Z `
 -IdnServiceApp AppName123 `
 -IdnExceptional PRIVILEGED `
 -EntitlementitlementAggregated true `
 -SegmentStatus GLOBAL `
 -Owner null
```

- Convert the resource to JSON
```powershell
$EntitlementDTO | ConvertTo-JSON
```


[[Back to top]](#) 

