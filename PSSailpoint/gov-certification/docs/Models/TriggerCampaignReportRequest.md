---
id: trigger-campaign-report-request
title: TriggerCampaignReportRequest
pagination_label: TriggerCampaignReportRequest
sidebar_label: TriggerCampaignReportRequest
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'TriggerCampaignReportRequest', 'TriggerCampaignReportRequest'] 
slug: /tools/sdk/powershell/govcertification/models/trigger-campaign-report-request
tags: ['SDK', 'Software Development Kit', 'TriggerCampaignReportRequest', 'TriggerCampaignReportRequest']
---


# TriggerCampaignReportRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **CampaignReportType** |  | [required]
**Format** | **CampaignReportFormat** |  | [required]
**Name** | **String** | The name of the report. The final name will include a timestamp and the appropriate extension based on the format value | [required]

## Examples

- Prepare the resource
```powershell
$TriggerCampaignReportRequest = Initialize-TriggerCampaignReportRequest  -Type null `
 -Format null `
 -Name My Campaign Report
```

- Convert the resource to JSON
```powershell
$TriggerCampaignReportRequest | ConvertTo-JSON
```


[[Back to top]](#) 

