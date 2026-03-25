---
id: v2026-identity-ownership-association-details
title: IdentityOwnershipAssociationDetails
pagination_label: IdentityOwnershipAssociationDetails
sidebar_label: IdentityOwnershipAssociationDetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityOwnershipAssociationDetails', 'V2026IdentityOwnershipAssociationDetails'] 
slug: /tools/sdk/powershell/v2026/models/identity-ownership-association-details
tags: ['SDK', 'Software Development Kit', 'IdentityOwnershipAssociationDetails', 'V2026IdentityOwnershipAssociationDetails']
---


# IdentityOwnershipAssociationDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AssociationDetails** | [**[]IdentityOwnershipAssociationDetailsAssociationDetailsInner**](identity-ownership-association-details-association-details-inner) | list of all the resource associations for the identity | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityOwnershipAssociationDetails = Initialize-V2026IdentityOwnershipAssociationDetails  -AssociationDetails null
```

- Convert the resource to JSON
```powershell
$IdentityOwnershipAssociationDetails | ConvertTo-JSON
```


[[Back to top]](#) 

