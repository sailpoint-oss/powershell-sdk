---
id: accessprofilemetadatabulkupdatebyfilterrequest
title: Accessprofilemetadatabulkupdatebyfilterrequest
pagination_label: Accessprofilemetadatabulkupdatebyfilterrequest
sidebar_label: Accessprofilemetadatabulkupdatebyfilterrequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Accessprofilemetadatabulkupdatebyfilterrequest', 'Accessprofilemetadatabulkupdatebyfilterrequest'] 
slug: /tools/sdk/powershell/accessprofiles/models/accessprofilemetadatabulkupdatebyfilterrequest
tags: ['SDK', 'Software Development Kit', 'Accessprofilemetadatabulkupdatebyfilterrequest', 'Accessprofilemetadatabulkupdatebyfilterrequest']
---


# Accessprofilemetadatabulkupdatebyfilterrequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Filters** | **String** | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **requestable**: *eq*  **source.id**: *eq, in*  Supported composite operators are *and, or* | [required]
**Operation** |  **Enum** [  "ADD",    "REMOVE",    "REPLACE" ] | The operation to be performed | [required]
**ReplaceScope** |  **Enum** [  "ALL",    "ATTRIBUTE" ] | The choice of update scope. **ATTRIBUTE** replaces only the values of the attributes named in `values`, and **ALL** replaces every metadata attribute on the access profile. | [required]
**Values** | [**[]AccessprofilemetadatabulkupdatebyidrequestValuesInner**](accessprofilemetadatabulkupdatebyidrequest-values-inner) | The metadata to be updated, including attribute key and value. | [required]

## Examples

- Prepare the resource
```powershell
$Accessprofilemetadatabulkupdatebyfilterrequest = Initialize-Accessprofilemetadatabulkupdatebyfilterrequest  -Filters requestable eq false `
 -Operation REPLACE `
 -ReplaceScope ATTRIBUTE `
 -Values [{"attribute":"iscFederalClassifications","values":["topSecret"]}]
```

- Convert the resource to JSON
```powershell
$Accessprofilemetadatabulkupdatebyfilterrequest | ConvertTo-JSON
```


[[Back to top]](#) 

