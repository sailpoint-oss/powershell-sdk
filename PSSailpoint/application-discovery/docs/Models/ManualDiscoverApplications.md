---
id: manual-discover-applications
title: ManualDiscoverApplications
pagination_label: ManualDiscoverApplications
sidebar_label: ManualDiscoverApplications
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ManualDiscoverApplications', 'ManualDiscoverApplications'] 
slug: /tools/sdk/powershell/applicationdiscovery/models/manual-discover-applications
tags: ['SDK', 'Software Development Kit', 'ManualDiscoverApplications', 'ManualDiscoverApplications']
---


# ManualDiscoverApplications

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**File** | **System.IO.FileInfo** | The CSV file to upload containing `application_name` and `description` columns. Each row represents an application to be discovered. | [required]

## Examples

- Prepare the resource
```powershell
$ManualDiscoverApplications = Initialize-ManualDiscoverApplications  -File [B@6831d8fd
```

- Convert the resource to JSON
```powershell
$ManualDiscoverApplications | ConvertTo-JSON
```


[[Back to top]](#) 

