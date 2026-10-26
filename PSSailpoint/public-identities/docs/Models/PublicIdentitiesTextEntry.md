---
id: public-identities-text-entry
title: PublicIdentitiesTextEntry
pagination_label: PublicIdentitiesTextEntry
sidebar_label: PublicIdentitiesTextEntry
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'PublicIdentitiesTextEntry', 'PublicIdentitiesTextEntry'] 
slug: /tools/sdk/powershell/publicidentities/models/public-identities-text-entry
tags: ['SDK', 'Software Development Kit', 'PublicIdentitiesTextEntry', 'PublicIdentitiesTextEntry']
---


# PublicIdentitiesTextEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**QueryType** |  **Enum** [  "TEXT" ] | Entry type discriminator. Must be TEXT for text query entries. | [required]
**TextQuery** | [**PublicIdentitiesTextQuery**](public-identities-text-query) | Text query clause for this TEXT entry. | [required]

## Examples

- Prepare the resource
```powershell
$PublicIdentitiesTextEntry = Initialize-PublicIdentitiesTextEntry  -QueryType TEXT `
 -TextQuery null
```

- Convert the resource to JSON
```powershell
$PublicIdentitiesTextEntry | ConvertTo-JSON
```


[[Back to top]](#) 

