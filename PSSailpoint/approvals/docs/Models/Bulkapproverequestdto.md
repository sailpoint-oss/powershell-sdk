---
id: bulkapproverequestdto
title: Bulkapproverequestdto
pagination_label: Bulkapproverequestdto
sidebar_label: Bulkapproverequestdto
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Bulkapproverequestdto', 'Bulkapproverequestdto'] 
slug: /tools/sdk/powershell/approvalsv1/models/bulkapproverequestdto
tags: ['SDK', 'Software Development Kit', 'Bulkapproverequestdto', 'Bulkapproverequestdto']
---


# Bulkapproverequestdto

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApprovalIds** | **[]String** | Array of Approval IDs to be bulk approved | [optional] 
**Comment** | **String** | Optional comment to include with the bulk approval request | [optional] 
**AdditionalAttributes** | [**map[string]AnyType**](any-type) | Additional attributes to include with the bulk approval request | [optional] 

## Examples

- Prepare the resource
```powershell
$Bulkapproverequestdto = Initialize-Bulkapproverequestdto  -ApprovalIds ["38453251-6be2-5f8f-df93-5ce19e295837","38453251-6be2-5f8f-df93-5ce19e295838"] `
 -Comment Bulk approved by admin for monthly review `
 -AdditionalAttributes {"source":"automation","urgency":"high"}
```

- Convert the resource to JSON
```powershell
$Bulkapproverequestdto | ConvertTo-JSON
```


[[Back to top]](#) 

