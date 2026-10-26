---
id: public-identities-composite-entry
title: PublicIdentitiesCompositeEntry
pagination_label: PublicIdentitiesCompositeEntry
sidebar_label: PublicIdentitiesCompositeEntry
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PublicIdentitiesCompositeEntry', 'PublicIdentitiesCompositeEntry'] 
slug: /tools/sdk/powershell/publicidentities/models/public-identities-composite-entry
tags: ['SDK', 'Software Development Kit', 'PublicIdentitiesCompositeEntry', 'PublicIdentitiesCompositeEntry']
---


# PublicIdentitiesCompositeEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QueryType** |  **Enum** [  "COMPOSITE" ] | Entry type discriminator. Must be COMPOSITE for nested query sets. | [required]
**TextQuery** | [**PublicIdentitiesTextQuery**](public-identities-text-query) | Text query clause for this TEXT entry. | [required]
**QuerySet** | [**PublicIdentitiesNestedQuerySet**](public-identities-nested-query-set) | Nested query set for this COMPOSITE entry. | [required]

## Examples

- Prepare the resource
```powershell
$PublicIdentitiesCompositeEntry = Initialize-PublicIdentitiesCompositeEntry  -QueryType COMPOSITE `
 -TextQuery null `
 -QuerySet null
```

- Convert the resource to JSON
```powershell
$PublicIdentitiesCompositeEntry | ConvertTo-JSON
```


[[Back to top]](#) 

