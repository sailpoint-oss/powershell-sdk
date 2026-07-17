---
id: identity-association-details
title: IdentityAssociationDetails
pagination_label: IdentityAssociationDetails
sidebar_label: IdentityAssociationDetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IdentityAssociationDetails', 'IdentityAssociationDetails'] 
slug: /tools/sdk/powershell/identities/models/identity-association-details
tags: ['SDK', 'Software Development Kit', 'IdentityAssociationDetails', 'IdentityAssociationDetails']
---


# IdentityAssociationDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | **String** | any additional context information of the http call result | [optional] 
**AssociationDetails** | [**[]IdentityAssociationDetailsAssociationDetailsInner**](identity-association-details-association-details-inner) | list of all the resource associations for the identity | [optional] 

## Examples

- Prepare the resource
```powershell
$IdentityAssociationDetails = Initialize-IdentityAssociationDetails  -Message Identity cannot be deleted as it is owner of following resources `
 -AssociationDetails null
```

- Convert the resource to JSON
```powershell
$IdentityAssociationDetails | ConvertTo-JSON
```


[[Back to top]](#) 

