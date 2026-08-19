---
id: intelnonhumanidentityownership
title: Intelnonhumanidentityownership
pagination_label: Intelnonhumanidentityownership
sidebar_label: Intelnonhumanidentityownership
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelnonhumanidentityownership', 'Intelnonhumanidentityownership'] 
slug: /tools/sdk/powershell/intelligence/models/intelnonhumanidentityownership
tags: ['SDK', 'Software Development Kit', 'Intelnonhumanidentityownership', 'Intelnonhumanidentityownership']
---


# Intelnonhumanidentityownership

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Agents** | [**Intelnonhumanidentityownershipcategory**](intelnonhumanidentityownershipcategory) | Ownership for non-human identities with subtype AI Agent. | [required]
**Applications** | [**Intelnonhumanidentityownershipcategory**](intelnonhumanidentityownershipcategory) | Ownership for non-human identities with subtype Application. | [required]

## Examples

- Prepare the resource
```powershell
$Intelnonhumanidentityownership = Initialize-Intelnonhumanidentityownership  -Agents null `
 -Applications null
```

- Convert the resource to JSON
```powershell
$Intelnonhumanidentityownership | ConvertTo-JSON
```


[[Back to top]](#) 

