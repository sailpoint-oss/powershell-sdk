---
id: entitlementmetadatabulkupdatebyidrequest-values-inner
title: EntitlementmetadatabulkupdatebyidrequestValuesInner
pagination_label: EntitlementmetadatabulkupdatebyidrequestValuesInner
sidebar_label: EntitlementmetadatabulkupdatebyidrequestValuesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementmetadatabulkupdatebyidrequestValuesInner', 'EntitlementmetadatabulkupdatebyidrequestValuesInner'] 
slug: /tools/sdk/powershell/entitlements/models/entitlementmetadatabulkupdatebyidrequest-values-inner
tags: ['SDK', 'Software Development Kit', 'EntitlementmetadatabulkupdatebyidrequestValuesInner', 'EntitlementmetadatabulkupdatebyidrequestValuesInner']
---


# EntitlementmetadatabulkupdatebyidrequestValuesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | The technical name of the metadata attribute. | [required]
**Values** | **[]String** | The values of the attribute to be updated. | [required]
**ObjectType** | **String** | The type of the metadata attribute. Set to `custom` for custom metadata attributes, which require a suite license. | [optional] 

## Examples

- Prepare the resource
```powershell
$EntitlementmetadatabulkupdatebyidrequestValuesInner = Initialize-EntitlementmetadatabulkupdatebyidrequestValuesInner  -Attribute iscFederalClassifications `
 -Values ["secret"] `
 -ObjectType custom
```

- Convert the resource to JSON
```powershell
$EntitlementmetadatabulkupdatebyidrequestValuesInner | ConvertTo-JSON
```


[[Back to top]](#) 

