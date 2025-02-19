---
id: beta-import-entitlements-request
title: ImportEntitlementsRequest
pagination_label: ImportEntitlementsRequest
sidebar_label: ImportEntitlementsRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ImportEntitlementsRequest', 'BetaImportEntitlementsRequest'] 
slug: /tools/sdk/powershell/beta/models/import-entitlements-request
tags: ['SDK', 'Software Development Kit', 'ImportEntitlementsRequest', 'BetaImportEntitlementsRequest']
---


# ImportEntitlementsRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** | The CSV file containing the source entitlements to aggregate. | [optional] 

## Examples

- Prepare the resource
```powershell
$ImportEntitlementsRequest = Initialize-PSSailpoint.BetaImportEntitlementsRequest  -File null
$ImportEntitlementsRequest = @"{  "File": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToImportEntitlementsRequest -Json $ImportEntitlementsRequest
```


[[Back to top]](#) 

