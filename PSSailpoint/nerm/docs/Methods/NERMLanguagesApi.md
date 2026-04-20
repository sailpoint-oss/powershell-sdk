---
id: nerm-languages
title: Languages
pagination_label: Languages
sidebar_label: Languages
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Languages', 'NERMLanguages'] 
slug: /tools/sdk/powershell/nerm/methods/languages
tags: ['SDK', 'Software Development Kit', 'Languages', 'NERMLanguages']
---

# Languages
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Update-NERMLanguage**](#patch-language) | **PATCH** `/languages/{locale}` | Update a language by locale


## patch-language
Update a language by locale

[API Spec](https://developer.sailpoint.com/docs/api//patch-language)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | LanguageLocale | **String** | True  | Language locale of the object
 Body  | PatchLanguageRequest | [**PatchLanguageRequest**](../models/patch-language-request) | True  | 

### Return type
[**PatchLanguageRequest**](../models/patch-language-request)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | PatchLanguageRequest
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$LanguageLocale = "es" # String | Language locale of the object
$PatchLanguageRequest = @""@

# Update a language by locale

try {
    $Result = ConvertFrom-NERMJsonToPatchLanguageRequest -Json $PatchLanguageRequest
    Update-NERMLanguage -LanguageLocale $LanguageLocale -PatchLanguageRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMLanguage -LanguageLocale $LanguageLocale -PatchLanguageRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMLanguage"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
