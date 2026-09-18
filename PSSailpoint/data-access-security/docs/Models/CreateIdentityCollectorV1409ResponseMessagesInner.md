---
id: create-identity-collector-v1409-response-messages-inner
title: CreateIdentityCollectorV1409ResponseMessagesInner
pagination_label: CreateIdentityCollectorV1409ResponseMessagesInner
sidebar_label: CreateIdentityCollectorV1409ResponseMessagesInner
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'CreateIdentityCollectorV1409ResponseMessagesInner', 'CreateIdentityCollectorV1409ResponseMessagesInner'] 
slug: /tools/sdk/powershell/dataaccesssecurity/models/create-identity-collector-v1409-response-messages-inner
tags: ['SDK', 'Software Development Kit', 'CreateIdentityCollectorV1409ResponseMessagesInner', 'CreateIdentityCollectorV1409ResponseMessagesInner']
---


# CreateIdentityCollectorV1409ResponseMessagesInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locale** | **String** | The locale for the message text, a BCP 47 language tag. | [optional] 
**LocaleOrigin** | **String** | An indicator of how the locale was selected. | [optional] 
**Text** | **String** | Actual text of the error message in the indicated locale. | [optional] 

## Examples

- Prepare the resource
```powershell
$CreateIdentityCollectorV1409ResponseMessagesInner = Initialize-CreateIdentityCollectorV1409ResponseMessagesInner  -Locale en-US `
 -LocaleOrigin DEFAULT `
 -Text An identity collector with the same name already exists.
```

- Convert the resource to JSON
```powershell
$CreateIdentityCollectorV1409ResponseMessagesInner | ConvertTo-JSON
```


[[Back to top]](#) 

