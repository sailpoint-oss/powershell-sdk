---
id: v2026-identity-ownership-association-details-association-details-inner
title: IdentityOwnershipAssociationDetailsAssociationDetailsInner
pagination_label: IdentityOwnershipAssociationDetailsAssociationDetailsInner
sidebar_label: IdentityOwnershipAssociationDetailsAssociationDetailsInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityOwnershipAssociationDetailsAssociationDetailsInner', 'V2026IdentityOwnershipAssociationDetailsAssociationDetailsInner'] 
slug: /tools/sdk/powershell/v2026/models/identity-ownership-association-details-association-details-inner
tags: ['SDK', 'Software Development Kit', 'IdentityOwnershipAssociationDetailsAssociationDetailsInner', 'V2026IdentityOwnershipAssociationDetailsAssociationDetailsInner']
---


# IdentityOwnershipAssociationDetailsAssociationDetailsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssociationType** | **String** | association type with the identity | [optional] 
**Entities** | [**[]IdentityEntities**](identity-entities) | the specific resource this identity has ownership on | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityOwnershipAssociationDetailsAssociationDetailsInner = Initialize-V2026IdentityOwnershipAssociationDetailsAssociationDetailsInner  -AssociationType ROLE_OWNER `
 -Entities {id=b660a232f05b4e04812ca974b3011e0f, name=Gaston.800ddf9640a, type=ROLE}
```

- Convert the resource to JSON
```powershell
$IdentityOwnershipAssociationDetailsAssociationDetailsInner | ConvertTo-JSON
```


[[Back to top]](#) 

