---
id: jitactivationhistorydocument-summary-reauthentication
title: JitactivationhistorydocumentSummaryReauthentication
pagination_label: JitactivationhistorydocumentSummaryReauthentication
sidebar_label: JitactivationhistorydocumentSummaryReauthentication
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JitactivationhistorydocumentSummaryReauthentication', 'JitactivationhistorydocumentSummaryReauthentication'] 
slug: /tools/sdk/powershell/jitactivations/models/jitactivationhistorydocument-summary-reauthentication
tags: ['SDK', 'Software Development Kit', 'JitactivationhistorydocumentSummaryReauthentication', 'JitactivationhistorydocumentSummaryReauthentication']
---


# JitactivationhistorydocumentSummaryReauthentication

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Required** | **Boolean** | Whether reauthentication was required for this activation. | [optional] [default to $false]
**Bypassed** | **Boolean** | Whether the reauthentication requirement was bypassed. | [optional] [default to $false]

## Examples

- Prepare the resource
```powershell
$JitactivationhistorydocumentSummaryReauthentication = Initialize-JitactivationhistorydocumentSummaryReauthentication  -Required true `
 -Bypassed false
```

- Convert the resource to JSON
```powershell
$JitactivationhistorydocumentSummaryReauthentication | ConvertTo-JSON
```


[[Back to top]](#) 

