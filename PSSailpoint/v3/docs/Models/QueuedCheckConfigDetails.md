---
id: queued-check-config-details
title: QueuedCheckConfigDetails
pagination_label: QueuedCheckConfigDetails
sidebar_label: QueuedCheckConfigDetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'QueuedCheckConfigDetails', 'QueuedCheckConfigDetails'] 
slug: /tools/sdk/powershell/v3/models/queued-check-config-details
tags: ['SDK', 'Software Development Kit', 'QueuedCheckConfigDetails', 'QueuedCheckConfigDetails']
---


# QueuedCheckConfigDetails

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ProvisioningStatusCheckIntervalMinutes** | **String** | Interval in minutes between status checks | [required]
**ProvisioningMaxStatusCheckDays** | **String** | Maximum number of days to check | [required]

## Examples

- Prepare the resource
```powershell
$QueuedCheckConfigDetails = Initialize-PSSailpoint.V3QueuedCheckConfigDetails  -ProvisioningStatusCheckIntervalMinutes 30 `
 -ProvisioningMaxStatusCheckDays 2
$QueuedCheckConfigDetails = @"{  "ProvisioningStatusCheckIntervalMinutes": "30", "ProvisioningMaxStatusCheckDays": "2" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToQueuedCheckConfigDetails -Json $QueuedCheckConfigDetails
```


[[Back to top]](#) 

