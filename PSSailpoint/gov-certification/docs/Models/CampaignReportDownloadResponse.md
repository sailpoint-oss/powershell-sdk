---
id: campaign-report-download-response
title: CampaignReportDownloadResponse
pagination_label: CampaignReportDownloadResponse
sidebar_label: CampaignReportDownloadResponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CampaignReportDownloadResponse', 'CampaignReportDownloadResponse'] 
slug: /tools/sdk/powershell/govcertification/models/campaign-report-download-response
tags: ['SDK', 'Software Development Kit', 'CampaignReportDownloadResponse', 'CampaignReportDownloadResponse']
---


# CampaignReportDownloadResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The unique ID of the campaign report. | [required]
**PresignedUrl** | **String** | A URL to download the campaign report | [required]

## Examples

- Prepare the resource
```powershell
$CampaignReportDownloadResponse = Initialize-CampaignReportDownloadResponse  -Id e1aeb0b6-0021-4f40-8bc7-5c56533214b3 `
 -PresignedUrl https://secure-content.accessiq.sailpoint.com/someCampaignReport.pdf
```

- Convert the resource to JSON
```powershell
$CampaignReportDownloadResponse | ConvertTo-JSON
```


[[Back to top]](#) 

