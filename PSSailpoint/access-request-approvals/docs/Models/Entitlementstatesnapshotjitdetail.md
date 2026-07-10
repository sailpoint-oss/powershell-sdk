---
id: entitlementstatesnapshotjitdetail
title: Entitlementstatesnapshotjitdetail
pagination_label: Entitlementstatesnapshotjitdetail
sidebar_label: Entitlementstatesnapshotjitdetail
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Entitlementstatesnapshotjitdetail', 'Entitlementstatesnapshotjitdetail'] 
slug: /tools/sdk/powershell/accessrequestapprovals/models/entitlementstatesnapshotjitdetail
tags: ['SDK', 'Software Development Kit', 'Entitlementstatesnapshotjitdetail', 'Entitlementstatesnapshotjitdetail']
---


# Entitlementstatesnapshotjitdetail

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApplicationId** | **String** | Application id for the entitlement attribute (same as EntitlementStateSnapshot.applicationId). | [optional] 
**AttributeName** | **String** | Account attribute name for the entitlement (EntitlementStateSnapshot.attributeName). | [optional] 
**AttributeValues** | **[]String** | Entitlement values for that attribute (EntitlementStateSnapshot.attributeValues). | [optional] 

## Examples

- Prepare the resource
```powershell
$Entitlementstatesnapshotjitdetail = Initialize-Entitlementstatesnapshotjitdetail  -ApplicationId 2c9180835d2e5168015d32f890ca1581 `
 -AttributeName groups `
 -AttributeValues ["CN=Engineering,OU=Groups,DC=example,DC=com"]
```

- Convert the resource to JSON
```powershell
$Entitlementstatesnapshotjitdetail | ConvertTo-JSON
```


[[Back to top]](#) 

