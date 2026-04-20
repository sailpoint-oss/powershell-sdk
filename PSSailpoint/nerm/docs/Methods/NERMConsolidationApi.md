---
id: nerm-consolidation
title: Consolidation
pagination_label: Consolidation
sidebar_label: Consolidation
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Consolidation', 'NERMConsolidation'] 
slug: /tools/sdk/powershell/nerm/methods/consolidation
tags: ['SDK', 'Software Development Kit', 'Consolidation', 'NERMConsolidation']
---

# Consolidation
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Remove-NERMMasterRecord**](#delete-master-record) | **DELETE** `/idproxy/identities/{id}` | Delete a master record
[**Update-NERMDataRecord**](#patch-data-record) | **PATCH** `/idproxy/data_records/{id}/reassign` | Reassign data record


## delete-master-record
Consolidation is a deprecated feature, this endpoint provides a mechanism to delete a master record to assist customers.

[API Spec](https://developer.sailpoint.com/docs/api//delete-master-record)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Master record deleted. | 
400 | Error deleting master record | DeleteMasterRecord400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete

# Delete a master record

try {
    Remove-NERMMasterRecord -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-NERMMasterRecord -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-NERMMasterRecord"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-data-record
Consolidation is a deprecated feature, this endpoint provides a mechanism to reassign a data record to a new master record to assist customers.

[API Spec](https://developer.sailpoint.com/docs/api//patch-data-record)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the object to retrieve, update, or delete
 Body  | DataRecords | [**DataRecords**](../models/data-records) | True  | 

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | The data record has been reassigned. | 
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Id = "1246d8b3-ac29-4015-8154-dea4434a73fa" # String | ID of the object to retrieve, update, or delete
$DataRecords = @"{
  "master_record_id" : "456738c9ba999a0076cf8a9b"
}"@

# Reassign data record

try {
    $Result = ConvertFrom-NERMJsonToDataRecords -Json $DataRecords
    Update-NERMDataRecord -Id $Id -DataRecords $Result 
    
    # Below is a request that includes all optional parameters
    # Update-NERMDataRecord -Id $Id -DataRecords $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-NERMDataRecord"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
