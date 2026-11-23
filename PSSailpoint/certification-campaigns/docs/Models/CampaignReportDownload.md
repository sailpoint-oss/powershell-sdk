---
id: campaign-report-download
title: CampaignReportDownload
pagination_label: CampaignReportDownload
sidebar_label: CampaignReportDownload
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CampaignReportDownload', 'CampaignReportDownload'] 
slug: /tools/sdk/powershell/certificationcampaigns/models/campaign-report-download
tags: ['SDK', 'Software Development Kit', 'CampaignReportDownload', 'CampaignReportDownload']
---


# CampaignReportDownload

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the campaign report. | [required]
**DownloadUrl** | **String** | A URL to download the campaign report. A presigned download URL is valid for 90 minutes from the time it is returned. Call this endpoint again to get a new URL.  | [required]

## Examples

- Prepare the resource
```powershell
$CampaignReportDownload = Initialize-CampaignReportDownload  -Id e1aeb0b600214f408bc75c56533214b3 `
 -DownloadUrl https://secure-content.accessiq.sailpoint.com/someCampaignReport.pdf
```

- Convert the resource to JSON
```powershell
$CampaignReportDownload | ConvertTo-JSON
```


[[Back to top]](#) 

