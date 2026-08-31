---
id: accessprofilemetadatabulkupdatebyidrequest
title: Accessprofilemetadatabulkupdatebyidrequest
pagination_label: Accessprofilemetadatabulkupdatebyidrequest
sidebar_label: Accessprofilemetadatabulkupdatebyidrequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Accessprofilemetadatabulkupdatebyidrequest', 'Accessprofilemetadatabulkupdatebyidrequest'] 
slug: /tools/sdk/powershell/accessprofiles/models/accessprofilemetadatabulkupdatebyidrequest
tags: ['SDK', 'Software Development Kit', 'Accessprofilemetadatabulkupdatebyidrequest', 'Accessprofilemetadatabulkupdatebyidrequest']
---


# Accessprofilemetadatabulkupdatebyidrequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessProfiles** | **[]String** | The IDs of the access profiles to update. | [required]
**Operation** |  **Enum** [  "ADD",    "REMOVE",    "REPLACE" ] | The operation to be performed | [required]
**ReplaceScope** |  **Enum** [  "ALL",    "ATTRIBUTE" ] | The choice of update scope. **ATTRIBUTE** replaces only the values of the attributes named in `values`, and **ALL** replaces every metadata attribute on the access profile. | [required]
**Values** | [**[]AccessprofilemetadatabulkupdatebyidrequestValuesInner**](accessprofilemetadatabulkupdatebyidrequest-values-inner) | The metadata to be updated, including attribute key and value. | [required]

## Examples

- Prepare the resource
```powershell
$Accessprofilemetadatabulkupdatebyidrequest = Initialize-Accessprofilemetadatabulkupdatebyidrequest  -AccessProfiles ["b1db89554cfa431cb8b9921ea38d9367"] `
 -Operation REPLACE `
 -ReplaceScope ATTRIBUTE `
 -Values [{"attribute":"iscFederalClassifications","values":["topSecret"]}]
```

- Convert the resource to JSON
```powershell
$Accessprofilemetadatabulkupdatebyidrequest | ConvertTo-JSON
```


[[Back to top]](#) 

