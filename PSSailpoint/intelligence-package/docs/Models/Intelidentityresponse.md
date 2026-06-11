---
id: intelidentityresponse
title: Intelidentityresponse
pagination_label: Intelidentityresponse
sidebar_label: Intelidentityresponse
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Intelidentityresponse', 'Intelidentityresponse'] 
slug: /tools/sdk/powershell/intelligencepackagev1/models/intelidentityresponse
tags: ['SDK', 'Software Development Kit', 'Intelidentityresponse', 'Intelidentityresponse']
---


# Intelidentityresponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | Identity Security Cloud identifier for this identity. | [required]
**Type** |  **Enum** [  "HUMAN",    "MACHINE" ] | Discriminator indicating whether this identity is human or machine backed. | [required]
**DisplayName** | **String** | Preferred display name for the identity across administrative experiences. | [optional] 
**Description** | **String** | Optional free-text description assigned to the identity profile when present. | [optional] 
**Subtype** | **String** | For HUMAN identities, NERM classification (Employee, Non Employee, or Cannot Determine). For MACHINE identities, connector subtype string from the authoritative source.  | [optional] 
**Owners** | **String** | Serialized owner reference information when populated by upstream identity services. | [optional] 
**Attributes** | [**map[string]AnyType**](any-type) | Arbitrary SCIM-style attribute bag returned for the identity context view. | [optional] 
**Timestamps** | [**Intelidentitytimestamps**](intelidentitytimestamps) | Created and modified timestamps for the identity record in Identity Security Cloud. | [required]
**Human** | [**Intelhuman**](intelhuman) | Human identity extension payload when type is HUMAN. | [optional] 
**Machine** | [**Intelmachine**](intelmachine) | Machine identity extension payload when type is MACHINE. | [optional] 
**Links** | [**Intelidentitylinks**](intelidentitylinks) | Hyperlinks to related Intelligence Package sub-resources; present for HUMAN only. | [optional] 

## Examples

- Prepare the resource
```powershell
$Intelidentityresponse = Initialize-Intelidentityresponse  -Id ef38f94347e94562b5bb8424a56397d8 `
 -Type HUMAN `
 -DisplayName Jane Example `
 -Description Contractor identity for example project work. `
 -Subtype Employee `
 -Owners governance-group-001 `
 -Attributes {"department":"Engineering","region":"US"} `
 -Timestamps null `
 -Human null `
 -Machine null `
 -Links null
```

- Convert the resource to JSON
```powershell
$Intelidentityresponse | ConvertTo-JSON
```


[[Back to top]](#) 

