---
id: intelcertificationhistoryevent
title: Intelcertificationhistoryevent
pagination_label: Intelcertificationhistoryevent
sidebar_label: Intelcertificationhistoryevent
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelcertificationhistoryevent', 'Intelcertificationhistoryevent'] 
slug: /tools/sdk/powershell/intelligence/models/intelcertificationhistoryevent
tags: ['SDK', 'Software Development Kit', 'Intelcertificationhistoryevent', 'Intelcertificationhistoryevent']
---


# Intelcertificationhistoryevent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EventType** |  **Enum** [  "IdentityCertified" ] | Type of certification history event. | [required]
**DateTime** | **System.DateTime** | Event timestamp. | [optional] 
**CertificationId** | **String** | Identifier of the certification. | [optional] 
**CertificationName** | **String** | Display name of the certification. | [optional] 
**SignedDate** | **System.DateTime** | Timestamp when the certification was signed. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelcertificationhistoryevent = Initialize-Intelcertificationhistoryevent  -EventType IdentityCertified `
 -DateTime 2019-03-08T22:37:33.901Z `
 -CertificationId 2c91808a77ff216301782327a50f09bf `
 -CertificationName Example certification `
 -SignedDate 2019-03-08T22:37:33.901Z
```

- Convert the resource to JSON
```powershell
$Intelcertificationhistoryevent | ConvertTo-JSON
```


[[Back to top]](#) 

