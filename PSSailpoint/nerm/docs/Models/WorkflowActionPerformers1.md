---
id: nerm-workflow-action-performers1
title: WorkflowActionPerformers1
pagination_label: WorkflowActionPerformers1
sidebar_label: WorkflowActionPerformers1
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkflowActionPerformers1', 'NERMWorkflowActionPerformers1'] 
slug: /tools/sdk/powershell/nerm/models/workflow-action-performers1
tags: ['SDK', 'Software Development Kit', 'WorkflowActionPerformers1', 'NERMWorkflowActionPerformers1']
---


# WorkflowActionPerformers1

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ContributorAttributeId** | **String** | Specify the id of the user attribute to perform the action. | [optional] 
**Contributors** | **Boolean** | Set to true to allow profile contributor to perform the action. | [optional] [default to $false]
**ContributorsManagerAttributeId** | **String** | Specify the id of the user attribute to perform the action. | [optional] 
**Owner** | **Boolean** | Set to true to allow profile owner to perform the action. | [optional] [default to $false]
**ProfilesContributorsAttributeId** | **String** | Specify the id of the profile attribute to perform the action. | [optional] 
**Requester** | **Boolean** | Set to true to allow requester from the request to perform the action. | [optional] [default to $false]
**RequestersManager** | **Boolean** | Set to true to allow the requester's manager from the request to perform the action. | [optional] [default to $false]
**WorkflowActionId** | **String** | Specify the id of the workflow action you would like to create the workflow action performer/s for. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowActionPerformers1 = Initialize-NERMWorkflowActionPerformers1  -ContributorAttributeId e6905f25-489a-43cd-a758-bdacaf60dcab `
 -Contributors true `
 -ContributorsManagerAttributeId e6905f25-489a-43cd-a758-bdacaf60dcab `
 -Owner true `
 -ProfilesContributorsAttributeId e6905f25-489a-43cd-a758-bdacaf60dcab `
 -Requester true `
 -RequestersManager true `
 -WorkflowActionId e6905f25-489a-43cd-a758-bdacaf60dcab
```

- Convert the resource to JSON
```powershell
$WorkflowActionPerformers1 | ConvertTo-JSON
```


[[Back to top]](#) 

