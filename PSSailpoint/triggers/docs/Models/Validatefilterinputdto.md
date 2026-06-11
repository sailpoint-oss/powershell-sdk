---
id: validatefilterinputdto
title: Validatefilterinputdto
pagination_label: Validatefilterinputdto
sidebar_label: Validatefilterinputdto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Validatefilterinputdto', 'Validatefilterinputdto'] 
slug: /tools/sdk/powershell/triggersv1/models/validatefilterinputdto
tags: ['SDK', 'Software Development Kit', 'Validatefilterinputdto', 'Validatefilterinputdto']
---


# Validatefilterinputdto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**VarInput** | [**SystemCollectionsHashtable**](system-collections-hashtable) | Mock input to evaluate filter expression against. | [required]
**VarFilter** | **String** | JSONPath filter to conditionally invoke trigger when expression evaluates to true. | [required]

## Examples

- Prepare the resource
```powershell
$Validatefilterinputdto = Initialize-Validatefilterinputdto  -VarInput {"identityId":"201327fda1c44704ac01181e963d463c"} `
 -VarFilter $[?($.identityId == "201327fda1c44704ac01181e963d463c")]
```

- Convert the resource to JSON
```powershell
$Validatefilterinputdto | ConvertTo-JSON
```


[[Back to top]](#) 

