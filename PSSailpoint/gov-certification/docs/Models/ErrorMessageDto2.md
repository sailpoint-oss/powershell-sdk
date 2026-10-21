---
id: error-message-dto2
title: ErrorMessageDto2
pagination_label: ErrorMessageDto2
sidebar_label: ErrorMessageDto2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'ErrorMessageDto2', 'ErrorMessageDto2'] 
slug: /tools/sdk/powershell/govcertification/models/error-message-dto2
tags: ['SDK', 'Software Development Kit', 'ErrorMessageDto2', 'ErrorMessageDto2']
---


# ErrorMessageDto2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Locale** | **String** | The locale for the message text, a BCP 47 language tag. | [optional] 
**LocaleOrigin** | **LocaleOrigin2** |  | [optional] 
**Text** | **String** | Actual text of the error message in the indicated locale. | [optional] 

## Examples

- Prepare the resource
```powershell
$ErrorMessageDto2 = Initialize-ErrorMessageDto2  -Locale en-US `
 -LocaleOrigin null `
 -Text The request was syntactically correct but its content is semantically invalid.
```

- Convert the resource to JSON
```powershell
$ErrorMessageDto2 | ConvertTo-JSON
```


[[Back to top]](#) 

