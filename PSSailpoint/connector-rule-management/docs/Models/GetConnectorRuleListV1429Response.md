---
id: get-connector-rule-list-v1429-response
title: GetConnectorRuleListV1429Response
pagination_label: GetConnectorRuleListV1429Response
sidebar_label: GetConnectorRuleListV1429Response
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'GetConnectorRuleListV1429Response', 'GetConnectorRuleListV1429Response'] 
slug: /tools/sdk/powershell/connectorrulemanagementv1/models/get-connector-rule-list-v1429-response
tags: ['SDK', 'Software Development Kit', 'GetConnectorRuleListV1429Response', 'GetConnectorRuleListV1429Response']
---


# GetConnectorRuleListV1429Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Message** | [**AnyType**](any-type) | A message describing the error | [optional] 

## Examples

- Prepare the resource
```powershell
$GetConnectorRuleListV1429Response = Initialize-GetConnectorRuleListV1429Response  -Message  Rate Limit Exceeded 
```

- Convert the resource to JSON
```powershell
$GetConnectorRuleListV1429Response | ConvertTo-JSON
```


[[Back to top]](#) 

