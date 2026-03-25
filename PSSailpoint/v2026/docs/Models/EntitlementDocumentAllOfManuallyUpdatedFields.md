---
id: v2026-entitlement-document-all-of-manually-updated-fields
title: EntitlementDocumentAllOfManuallyUpdatedFields
pagination_label: EntitlementDocumentAllOfManuallyUpdatedFields
sidebar_label: EntitlementDocumentAllOfManuallyUpdatedFields
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'EntitlementDocumentAllOfManuallyUpdatedFields', 'V2026EntitlementDocumentAllOfManuallyUpdatedFields'] 
slug: /tools/sdk/powershell/v2026/models/entitlement-document-all-of-manually-updated-fields
tags: ['SDK', 'Software Development Kit', 'EntitlementDocumentAllOfManuallyUpdatedFields', 'V2026EntitlementDocumentAllOfManuallyUpdatedFields']
---


# EntitlementDocumentAllOfManuallyUpdatedFields

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DESCRIPTION** | **Boolean** |  | [optional] [default to $false]
**DISPLAYNAME** | **Boolean** |  | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$EntitlementDocumentAllOfManuallyUpdatedFields = Initialize-V2026EntitlementDocumentAllOfManuallyUpdatedFields  -DESCRIPTION false `
 -DISPLAYNAME false
```

- Convert the resource to JSON
```powershell
$EntitlementDocumentAllOfManuallyUpdatedFields | ConvertTo-JSON
```


[[Back to top]](#) 

