---
id: certification-status-summary
title: CertificationStatusSummary
pagination_label: CertificationStatusSummary
sidebar_label: CertificationStatusSummary
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CertificationStatusSummary', 'CertificationStatusSummary'] 
slug: /tools/sdk/powershell/govcertification/models/certification-status-summary
tags: ['SDK', 'Software Development Kit', 'CertificationStatusSummary', 'CertificationStatusSummary']
---


# CertificationStatusSummary

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ActiveCertifications** | **Int32** | The number of active certifications | [optional] 
**OverdueCertifications** | **Int32** | The number of certifications passed the due date | [optional] 
**MaximumDaysOverdue** | **Int32** | The maximum number of days past due the most overdue certification is | [optional] 
**MinimumDaysLeftToComplete** | **Int32** | The closest number of days to completion | [optional] 
**CompletedDecisionsForActiveCerts** | **Int32** | The number of of decisions that have been made | [optional] 
**PendingDecisionsForActiveCerts** | **Int32** | The number of decisions that are pending | [optional] 

## Examples

- Prepare the resource
```powershell
$CertificationStatusSummary = Initialize-CertificationStatusSummary  -ActiveCertifications 20 `
 -OverdueCertifications 20 `
 -MaximumDaysOverdue 20 `
 -MinimumDaysLeftToComplete 20 `
 -CompletedDecisionsForActiveCerts 20 `
 -PendingDecisionsForActiveCerts 20
```

- Convert the resource to JSON
```powershell
$CertificationStatusSummary | ConvertTo-JSON
```


[[Back to top]](#) 

