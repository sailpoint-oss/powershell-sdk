---
id: entitlementmetadatabulkupdatebyqueryrequest
title: Entitlementmetadatabulkupdatebyqueryrequest
pagination_label: Entitlementmetadatabulkupdatebyqueryrequest
sidebar_label: Entitlementmetadatabulkupdatebyqueryrequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Entitlementmetadatabulkupdatebyqueryrequest', 'Entitlementmetadatabulkupdatebyqueryrequest'] 
slug: /tools/sdk/powershell/entitlements/models/entitlementmetadatabulkupdatebyqueryrequest
tags: ['SDK', 'Software Development Kit', 'Entitlementmetadatabulkupdatebyqueryrequest', 'Entitlementmetadatabulkupdatebyqueryrequest']
---


# Entitlementmetadatabulkupdatebyqueryrequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Query** | **SystemCollectionsHashtable** | The search query selecting the entitlements to update. | [required]
**Operation** |  **Enum** [  "ADD",    "REMOVE",    "REPLACE" ] | The operation to be performed | [required]
**ReplaceScope** |  **Enum** [  "ALL",    "ATTRIBUTE" ] | The choice of update scope. **ATTRIBUTE** replaces only the values of the attributes named in `values`, and **ALL** replaces every metadata attribute on the entitlement. | [optional] 
**Values** | [**[]EntitlementmetadatabulkupdatebyidrequestValuesInner**](entitlementmetadatabulkupdatebyidrequest-values-inner) | The metadata to be updated, including attribute key and value. | [required]

## Examples

- Prepare the resource
```powershell
$Entitlementmetadatabulkupdatebyqueryrequest = Initialize-Entitlementmetadatabulkupdatebyqueryrequest  -Query {"indices":["entitlements"],"queryType":"TEXT","textQuery":{"terms":["test123"],"fields":["id"],"matchAny":false,"contains":true},"includeNested":false} `
 -Operation REPLACE `
 -ReplaceScope ATTRIBUTE `
 -Values [{"attribute":"iscFederalClassifications","values":["topSecret"]}]
```

- Convert the resource to JSON
```powershell
$Entitlementmetadatabulkupdatebyqueryrequest | ConvertTo-JSON
```


[[Back to top]](#) 

