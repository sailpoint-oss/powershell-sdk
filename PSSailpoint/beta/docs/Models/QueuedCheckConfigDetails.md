---
id: beta-queued-check-config-details
title: QueuedCheckConfigDetails
pagination_label: QueuedCheckConfigDetails
sidebar_label: QueuedCheckConfigDetails
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'QueuedCheckConfigDetails', 'BetaQueuedCheckConfigDetails'] 
slug: /tools/sdk/powershell/beta/models/queued-check-config-details
tags: ['SDK', 'Software Development Kit', 'QueuedCheckConfigDetails', 'BetaQueuedCheckConfigDetails']
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
$QueuedCheckConfigDetails = Initialize-PSSailpoint.BetaQueuedCheckConfigDetails  -ProvisioningStatusCheckIntervalMinutes 30 `
 -ProvisioningMaxStatusCheckDays 2
$QueuedCheckConfigDetails = @"{  "ProvisioningStatusCheckIntervalMinutes": "30", "ProvisioningMaxStatusCheckDays": "2" }"@
```

- Convert the resource from JSON
```powershell
ConvertFrom-JsonToQueuedCheckConfigDetails -Json $QueuedCheckConfigDetails
```


[[Back to top]](#) 

