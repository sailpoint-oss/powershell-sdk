---
id: accessprofilemetadatabulkupdatebyidrequest-values-inner
title: AccessprofilemetadatabulkupdatebyidrequestValuesInner
pagination_label: AccessprofilemetadatabulkupdatebyidrequestValuesInner
sidebar_label: AccessprofilemetadatabulkupdatebyidrequestValuesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessprofilemetadatabulkupdatebyidrequestValuesInner', 'AccessprofilemetadatabulkupdatebyidrequestValuesInner'] 
slug: /tools/sdk/powershell/accessprofiles/models/accessprofilemetadatabulkupdatebyidrequest-values-inner
tags: ['SDK', 'Software Development Kit', 'AccessprofilemetadatabulkupdatebyidrequestValuesInner', 'AccessprofilemetadatabulkupdatebyidrequestValuesInner']
---


# AccessprofilemetadatabulkupdatebyidrequestValuesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | The technical name of the metadata attribute. | [required]
**Values** | **[]String** | The values of the attribute to be updated. | [required]
**ObjectType** | **String** | The type of the metadata attribute. Set to `custom` for custom metadata attributes, which require a suite license. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessprofilemetadatabulkupdatebyidrequestValuesInner = Initialize-AccessprofilemetadatabulkupdatebyidrequestValuesInner  -Attribute iscFederalClassifications `
 -Values ["secret"] `
 -ObjectType custom
```

- Convert the resource to JSON
```powershell
$AccessprofilemetadatabulkupdatebyidrequestValuesInner | ConvertTo-JSON
```


[[Back to top]](#) 

