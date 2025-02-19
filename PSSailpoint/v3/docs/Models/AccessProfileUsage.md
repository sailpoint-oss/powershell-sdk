---
id: access-profile-usage
title: AccessProfileUsage
pagination_label: AccessProfileUsage
sidebar_label: AccessProfileUsage
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessProfileUsage', 'AccessProfileUsage'] 
slug: /tools/sdk/powershell/v3/models/access-profile-usage
tags: ['SDK', 'Software Development Kit', 'AccessProfileUsage', 'AccessProfileUsage']
---


# AccessProfileUsage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccessProfileId** | **String** | ID of the Access Profile that is in use | [optional] 
**UsedBy** | [**[]AccessProfileUsageUsedByInner**](access-profile-usage-used-by-inner) | List of references to objects which are using the indicated Access Profile | [optional] 

## Examples

- Prepare the resource
```powershell
$AccessProfileUsage = Initialize-PSSailpoint.V3AccessProfileUsage  -AccessProfileId 2c91808876438bbb017668c21919ecca `
 -UsedBy null
$AccessProfileUsage = @"{  "AccessProfileId": "2c91808876438bbb017668c21919ecca", "UsedBy": "null "}"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToAccessProfileUsage -Json $AccessProfileUsage
```


[[Back to top]](#) 

