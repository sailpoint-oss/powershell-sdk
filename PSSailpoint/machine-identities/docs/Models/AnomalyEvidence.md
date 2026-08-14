---
id: anomaly-evidence
title: AnomalyEvidence
pagination_label: AnomalyEvidence
sidebar_label: AnomalyEvidence
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AnomalyEvidence', 'AnomalyEvidence'] 
slug: /tools/sdk/powershell/machineidentities/models/anomaly-evidence
tags: ['SDK', 'Software Development Kit', 'AnomalyEvidence', 'AnomalyEvidence']
---


# AnomalyEvidence

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Source** | **String** | Evidence source system. | [optional] 
**Timestamp** | [**AnomalyEvidenceTimestamp**](anomaly-evidence-timestamp) |  | [optional] 
**AgentAttributeType** | **String** | Attribute type captured for SENTINEL detections; null for SIEM detections. | [optional] 
**AgentAttributeValue** | **String** | Attribute value captured for SENTINEL detections; null for SIEM detections. | [optional] 
**Baseline** | [**AnomalyBaseline**](anomaly-baseline) | Peer-group baseline for SIEM detections; null for SENTINEL detections. | [optional] 

## Examples

- Prepare the resource
```powershell
$AnomalyEvidence = Initialize-AnomalyEvidence  -Source SENTINEL `
 -Timestamp null `
 -AgentAttributeType shell_exec `
 -AgentAttributeValue curl external.example.com `
 -Baseline null
```

- Convert the resource to JSON
```powershell
$AnomalyEvidence | ConvertTo-JSON
```


[[Back to top]](#) 

