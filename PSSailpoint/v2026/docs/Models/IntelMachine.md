---
id: v2026-intel-machine
title: IntelMachine
pagination_label: IntelMachine
sidebar_label: IntelMachine
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'IntelMachine', 'V2026IntelMachine'] 
slug: /tools/sdk/powershell/v2026/models/intel-machine
tags: ['SDK', 'Software Development Kit', 'IntelMachine', 'V2026IntelMachine']
---


# IntelMachine

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BusinessApplication** | **String** | Business application name associated with the non-human identity. | [optional] 
**NativeIdentity** | **String** | Native identifier value on the authoritative source for the machine identity. | [optional] 
**Uuid** | **String** | Optional globally unique identifier for the machine identity when assigned. | [optional] 
**SourceId** | **String** | Identifier of the correlated source for this machine identity. | [optional] 
**Source** | [**IntelMachineSource**](intel-machine-source) | Correlated source summary for the machine identity when available. | [optional] 
**DatasetId** | **String** | Dataset identifier used by machine identity correlation logic. | [optional] 
**ExistsOnSource** | **Boolean** | True when a matching account still exists on the connected source. | [optional] [default to $false]
**ManuallyCreated** | **Boolean** | True when the machine identity was created through a manual administrative action. | [optional] [default to $false]
**ManuallyEdited** | **Boolean** | True when the machine identity attributes were manually edited after creation. | [optional] [default to $false]
**Owners** | [**SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | Structured owner references for the machine identity when populated by the service. | [optional] 
**UserEntitlements** | [**[]SystemCollectionsHashtable**]https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0 | Entitlements or fine-grained rights linked to the machine identity when available. | [optional] 

## Examples

- Prepare the resource
```powershell
$IntelMachine = Initialize-V2026IntelMachine  -BusinessApplication Payroll Bot `
 -NativeIdentity example-agent-1 `
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
$IntelMachine | ConvertTo-JSON
```


[[Back to top]](#) 

