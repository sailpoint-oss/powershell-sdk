---
id: access-request-pre-approval2
title: AccessRequestPreApproval2
pagination_label: AccessRequestPreApproval2
sidebar_label: AccessRequestPreApproval2
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'AccessRequestPreApproval2', 'AccessRequestPreApproval2'] 
slug: /tools/sdk/powershell/triggers/models/access-request-pre-approval2
tags: ['SDK', 'Software Development Kit', 'AccessRequestPreApproval2', 'AccessRequestPreApproval2']
---


# AccessRequestPreApproval2

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Approved** | **Boolean** | Whether or not to approve the access request. | [required]
**Comment** | **String** | A comment about the decision to approve or deny the request. | [required]
**Approver** | **String** | The name of the entity that approved or denied the request. | [required]

## Examples

- Prepare the resource
```powershell
$AccessRequestPreApproval2 = Initialize-AccessRequestPreApproval2  -Approved false `
 -Comment This access should be denied, because this will cause an SOD violation. `
 -Approver AcmeCorpExternalIntegration
```

- Convert the resource to JSON
```powershell
$AccessRequestPreApproval2 | ConvertTo-JSON
```


[[Back to top]](#) 

