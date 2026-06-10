---
id: intelmachine
title: Intelmachine
pagination_label: Intelmachine
sidebar_label: Intelmachine
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelmachine', 'Intelmachine'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/intelmachine
tags: ['SDK', 'Software Development Kit', 'Intelmachine', 'Intelmachine']
---


# Intelmachine

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BusinessApplication** | **String** | Business application name associated with the non-human identity. | [optional] 
**NativeIdentity** | **String** | Native identifier value on the authoritative source for the machine identity. | [optional] 
**Uuid** | **String** | Optional globally unique identifier for the machine identity when assigned. | [optional] 
**SourceId** | **String** | Identifier of the correlated source for this machine identity. | [optional] 
**Source** | [**Intelmachinesource**](intelmachinesource) | Correlated source summary for the machine identity when available. | [optional] 
**DatasetId** | **String** | Dataset identifier used by machine identity correlation logic. | [optional] 
**ExistsOnSource** | **Boolean** | True when a matching account still exists on the connected source. | [optional] [default to $false]
**ManuallyCreated** | **Boolean** | True when the machine identity was created through a manual administrative action. | [optional] [default to $false]
**ManuallyEdited** | **Boolean** | True when the machine identity attributes were manually edited after creation. | [optional] [default to $false]
**Owners** | [**SystemCollectionsHashtable**](system-collections-hashtable) | Structured owner references for the machine identity when populated by the service. | [optional] 
**UserEntitlements** | [**[]SystemCollectionsHashtable**](system-collections-hashtable) | Entitlements or fine-grained rights linked to the machine identity when available. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelmachine = Initialize-Intelmachine  -BusinessApplication Payroll Bot `
 -NativeIdentity DEMO_AGENT1 `
 -Uuid 3fa85f64-5717-4562-b3fc-2c963f66afa6 `
 -SourceId 8433902684054f09ae024c06cf5091c1 `
 -Source null `
 -DatasetId dataset-001 `
 -ExistsOnSource true `
 -ManuallyCreated false `
 -ManuallyEdited false `
 -Owners {} `
 -UserEntitlements null
```

- Convert the resource to JSON
```powershell
$Intelmachine | ConvertTo-JSON
```


[[Back to top]](#) 

