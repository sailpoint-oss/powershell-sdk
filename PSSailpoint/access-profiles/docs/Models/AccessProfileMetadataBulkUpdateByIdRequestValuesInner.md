---
id: access-profile-metadata-bulk-update-by-id-request-values-inner
title: AccessProfileMetadataBulkUpdateByIdRequestValuesInner
pagination_label: AccessProfileMetadataBulkUpdateByIdRequestValuesInner
sidebar_label: AccessProfileMetadataBulkUpdateByIdRequestValuesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessProfileMetadataBulkUpdateByIdRequestValuesInner', 'AccessProfileMetadataBulkUpdateByIdRequestValuesInner'] 
slug: /tools/sdk/powershell/accessprofiles/models/access-profile-metadata-bulk-update-by-id-request-values-inner
tags: ['SDK', 'Software Development Kit', 'AccessProfileMetadataBulkUpdateByIdRequestValuesInner', 'AccessProfileMetadataBulkUpdateByIdRequestValuesInner']
---


# AccessProfileMetadataBulkUpdateByIdRequestValuesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Attribute** | **String** | The technical name of the metadata attribute. | [required]
**Values** | **[]String** | The values of the attribute to be updated. | [required]
**ObjectType** | **String** | The type of the metadata attribute. Set to `custom` for custom metadata attributes, which require a suite license. | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileMetadataBulkUpdateByIdRequestValuesInner = Initialize-AccessProfileMetadataBulkUpdateByIdRequestValuesInner  -Attribute iscFederalClassifications `
 -Values ["secret"] `
 -ObjectType custom
```

- Convert the resource to JSON
```powershell
$AccessProfileMetadataBulkUpdateByIdRequestValuesInner | ConvertTo-JSON
```


[[Back to top]](#) 

