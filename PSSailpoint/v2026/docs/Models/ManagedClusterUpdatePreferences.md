---
id: v2026-managed-cluster-update-preferences
title: ManagedClusterUpdatePreferences
pagination_label: ManagedClusterUpdatePreferences
sidebar_label: ManagedClusterUpdatePreferences
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ManagedClusterUpdatePreferences', 'V2026ManagedClusterUpdatePreferences'] 
slug: /tools/sdk/powershell/v2026/models/managed-cluster-update-preferences
tags: ['SDK', 'Software Development Kit', 'ManagedClusterUpdatePreferences', 'V2026ManagedClusterUpdatePreferences']
---


# ManagedClusterUpdatePreferences

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProcessGroups** | **String** | The processGroups for updatePreferences | [optional] 
**UpdateState** |  **Enum** [  "AUTO",    "DISABLED" ] | The current updateState for the cluster | [optional] 
**NotificationEmail** | **String** | The mail id to which new releases will be notified | [optional] 

## Examples

- Prepare the resource
```powershell
$ManagedClusterUpdatePreferences = Initialize-V2026ManagedClusterUpdatePreferences  -ProcessGroups processGroup1 `
 -UpdateState DISABLED `
 -NotificationEmail test@mail.com
```

- Convert the resource to JSON
```powershell
$ManagedClusterUpdatePreferences | ConvertTo-JSON
```


[[Back to top]](#) 

