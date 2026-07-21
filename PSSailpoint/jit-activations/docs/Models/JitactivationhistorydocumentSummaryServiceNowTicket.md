---
id: jitactivationhistorydocument-summary-service-now-ticket
title: JitactivationhistorydocumentSummaryServiceNowTicket
pagination_label: JitactivationhistorydocumentSummaryServiceNowTicket
sidebar_label: JitactivationhistorydocumentSummaryServiceNowTicket
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'JitactivationhistorydocumentSummaryServiceNowTicket', 'JitactivationhistorydocumentSummaryServiceNowTicket'] 
slug: /tools/sdk/powershell/jitactivations/models/jitactivationhistorydocument-summary-service-now-ticket
tags: ['SDK', 'Software Development Kit', 'JitactivationhistorydocumentSummaryServiceNowTicket', 'JitactivationhistorydocumentSummaryServiceNowTicket']
---


# JitactivationhistorydocumentSummaryServiceNowTicket

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Required** | **Boolean** | Whether a ServiceNow ticket was required for this activation. | [optional] [default to $false]
**Bypassed** | **Boolean** | Whether the ServiceNow ticket requirement was bypassed. | [optional] [default to $false]
**TicketReference** | **String** | ServiceNow ticket reference submitted by the user. | [optional] 

## Examples

- Prepare the resource
```powershell
$JitactivationhistorydocumentSummaryServiceNowTicket = Initialize-JitactivationhistorydocumentSummaryServiceNowTicket  -Required true `
 -Bypassed false `
 -TicketReference INC0012345
```

- Convert the resource to JSON
```powershell
$JitactivationhistorydocumentSummaryServiceNowTicket | ConvertTo-JSON
```


[[Back to top]](#) 

