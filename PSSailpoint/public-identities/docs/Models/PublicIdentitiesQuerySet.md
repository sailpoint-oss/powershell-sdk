---
id: public-identities-query-set
title: PublicIdentitiesQuerySet
pagination_label: PublicIdentitiesQuerySet
sidebar_label: PublicIdentitiesQuerySet
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PublicIdentitiesQuerySet', 'PublicIdentitiesQuerySet'] 
slug: /tools/sdk/powershell/publicidentities/models/public-identities-query-set
tags: ['SDK', 'Software Development Kit', 'PublicIdentitiesQuerySet', 'PublicIdentitiesQuerySet']
---


# PublicIdentitiesQuerySet

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MatchAny** | **Boolean** | When true, entries are OR'd; when false, entries are AND'd. | [required]
**Entries** | [**[]PublicIdentitiesCompositeEntry**](public-identities-composite-entry) | One or more TEXT or nested COMPOSITE entries. | [required]

## Examples

- Prepare the resource
```powershell
$PublicIdentitiesQuerySet = Initialize-PublicIdentitiesQuerySet  -MatchAny false `
 -Entries [{"queryType":"TEXT","textQuery":{"fields":["attributes.identityState.exact"],"terms":["ACTIVE"],"matchAny":false,"contains":false,"strict":true}}]
```

- Convert the resource to JSON
```powershell
$PublicIdentitiesQuerySet | ConvertTo-JSON
```


[[Back to top]](#) 

