---
id: nerm-invitation-action-configuration-attributes
title: InvitationActionConfigurationAttributes
pagination_label: InvitationActionConfigurationAttributes
sidebar_label: InvitationActionConfigurationAttributes
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'InvitationActionConfigurationAttributes', 'NERMInvitationActionConfigurationAttributes'] 
slug: /tools/sdk/powershell/nerm/models/invitation-action-configuration-attributes
tags: ['SDK', 'Software Development Kit', 'InvitationActionConfigurationAttributes', 'NERMInvitationActionConfigurationAttributes']
---


# InvitationActionConfigurationAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **String** | the id. | [optional] 
**WaitForCompletion** | **Boolean** | If the invitation action should pause the parent workflow to wait for completion. | [optional] 
**ReturnProfile** | **Boolean** | If the invitation action should return a profile. | [optional] 
**PortalId** | **String** | the id of the portal. | [optional] 
**RegistrationWorkflowId** | **String** | the id of the registration workflow. | [optional] 
**EmailAttributeId** | **String** | the id of the email attribute. | [optional] 
**ValidateCompletedRegistration** | **Boolean** | If the action should validate against completed registrations by email address. | [optional] 
**ValidateOpenRegistration** | **Boolean** | If the action should validate against open registrations by email address. | [optional] 

## Examples

- Prepare the resource
```powershell
$InvitationActionConfigurationAttributes = Initialize-NERMInvitationActionConfigurationAttributes  -Id 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -WaitForCompletion false `
 -ReturnProfile false `
 -PortalId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -RegistrationWorkflowId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -EmailAttributeId 33f072dd-13b4-41e1-8ea0-16f2a59b57c8 `
 -ValidateCompletedRegistration false `
 -ValidateOpenRegistration false
```

- Convert the resource to JSON
```powershell
$InvitationActionConfigurationAttributes | ConvertTo-JSON
```


[[Back to top]](#) 

