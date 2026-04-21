---
id: nerm-workflow-action-performers
title: WorkflowActionPerformers
pagination_label: WorkflowActionPerformers
sidebar_label: WorkflowActionPerformers
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkflowActionPerformers', 'NERMWorkflowActionPerformers'] 
slug: /tools/sdk/powershell/nerm/models/workflow-action-performers
tags: ['SDK', 'Software Development Kit', 'WorkflowActionPerformers', 'NERMWorkflowActionPerformers']
---


# WorkflowActionPerformers

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | The id of the workflow action performer that was created. | [optional] 
**ContributorAttributeId** | **String** | The id of the user attribute to perform the action. | [optional] 
**Contributors** | **Boolean** | Set to allow profile contributor to perform the action. | [optional] [default to $false]
**ContributorsManagerAttributeId** | **String** | The id of the user attribute to perform the action. | [optional] 
**Owner** | **Boolean** | Set to allow profile owner to perform the action. | [optional] [default to $false]
**ProfilesContributorsAttributeId** | **String** | The id of the profile attribute to perform the action. | [optional] 
**Requester** | **Boolean** | Set to allow requester from the request to perform the action. | [optional] [default to $false]
**RequestersManager** | **Boolean** | Set to allow the requester's manager from the request to perform the action. | [optional] [default to $false]
**WorkflowActionId** | **String** | The id of the workflow action. | [optional] 

## Examples

- Prepare the resource
```powershell
$WorkflowActionPerformers = Initialize-NERMWorkflowActionPerformers  -Id e6905f25-489a-43cd-a758-bdacaf60dcab `
 -ContributorAttributeId e6905f25-489a-43cd-a758-bdacaf60dcab `
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
$WorkflowActionPerformers | ConvertTo-JSON
```


[[Back to top]](#) 

