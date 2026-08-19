---
id: intelnonhumanidentityownershipcategory
title: Intelnonhumanidentityownershipcategory
pagination_label: Intelnonhumanidentityownershipcategory
sidebar_label: Intelnonhumanidentityownershipcategory
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelnonhumanidentityownershipcategory', 'Intelnonhumanidentityownershipcategory'] 
slug: /tools/sdk/powershell/intelligence/models/intelnonhumanidentityownershipcategory
tags: ['SDK', 'Software Development Kit', 'Intelnonhumanidentityownershipcategory', 'Intelnonhumanidentityownershipcategory']
---


# Intelnonhumanidentityownershipcategory

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PrimaryOwned** | [**Intelnonhumanidentityownedslice**](intelnonhumanidentityownedslice) | First page of non-human identities for which this human is the primary owner. | [optional] 
**SecondaryOwned** | [**Intelnonhumanidentityownedslice**](intelnonhumanidentityownedslice) | First page of non-human identities for which this human is a secondary owner. | [optional] 
**Message** | **String** | Human-readable explanation of the temporary ownership data failure. | [optional] 
**Reason** |  **Enum** [  "UPSTREAM_UNAVAILABLE" ] | Machine-readable reason code for the category-level ownership failure. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelnonhumanidentityownershipcategory = Initialize-Intelnonhumanidentityownershipcategory  -PrimaryOwned null `
 -SecondaryOwned null `
 -Message Data temporarily unavailable. Please try again later. `
 -Reason UPSTREAM_UNAVAILABLE
```

- Convert the resource to JSON
```powershell
$Intelnonhumanidentityownershipcategory | ConvertTo-JSON
```


[[Back to top]](#) 

