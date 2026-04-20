---
id: nerm-workflow-actions
title: WorkflowActions
pagination_label: WorkflowActions
sidebar_label: WorkflowActions
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'WorkflowActions', 'NERMWorkflowActions'] 
slug: /tools/sdk/powershell/nerm/methods/workflow-actions
tags: ['SDK', 'Software Development Kit', 'WorkflowActions', 'NERMWorkflowActions']
---

# WorkflowActions
   
  

All URIs are relative to *https://acmeco.nonemployee.com/api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-NERMApprovalAction**](#create-approval-action) | **POST** `/workflow_actions/approval_actions` | Create an approval action
[**New-NERMAskSecurityQuestionAction**](#create-ask-security-question-action) | **POST** `/workflow_actions/ask_security_question_actions` | Create ask security question action
[**New-NERMAutoAssignAction**](#create-auto-assign-action) | **POST** `/workflow_actions/auto_assign_actions` | Create an auto assign action
[**New-NERMBatchUpdateAction**](#create-batch-update-action) | **POST** `/workflow_actions/batch_update_actions` | Create a batch update action
[**New-NERMCloseSessionAction**](#create-close-session-action) | **POST** `/workflow_actions/close_session_actions` | Create a close session action
[**New-NERMContributorsAction**](#create-contributors-action) | **POST** `/workflow_actions/contributors_actions` | Create a contributors action
[**New-NERMCreateProfileAction**](#create-create-profile-action) | **POST** `/workflow_actions/create_profile_actions` | Create a create profile action
[**New-NERMDuplicatePreventionAction**](#create-duplicate-prevention-action) | **POST** `/workflow_actions/duplicate_prevention_actions` | Create a duplicate prevention action
[**New-NERMEmailVerificationAction**](#create-email-verification-action) | **POST** `/workflow_actions/email_verification_actions` | Create an email verification action
[**New-NERMFulfillmentAction**](#create-fulfillment-action) | **POST** `/workflow_actions/fulfillment_actions` | Create a fulfillment action
[**New-NERMIdentityProofingAction**](#create-identity-proofing-action) | **POST** `/workflow_actions/identity_proofing_actions` | Create an identity proofing action
[**New-NERMInvitationAction**](#create-invitation-action) | **POST** `/workflow_actions/invitation_actions` | Create an invitation action
[**New-NERMLdapAction**](#create-ldap-action) | **POST** `/workflow_actions/ldap_actions` | Create a ldap action
[**New-NERMNotificationAction**](#create-notification-action) | **POST** `/workflow_actions/notification_actions` | Create a notification action
[**New-NERMPasswordResetAction**](#create-password-reset-action) | **POST** `/workflow_actions/password_reset_actions` | Create a password reset action
[**New-NERMProfileCheckAction**](#create-profile-check-action) | **POST** `/workflow_actions/profile_check_actions` | Create a profile check action
[**New-NERMProfileSelectAction**](#create-profile-select-action) | **POST** `/workflow_actions/profile_select_actions` | Create a profile select action
[**New-NERMRequestAction**](#create-request-action) | **POST** `/workflow_actions/request_actions` | Create a request action
[**New-NERMRestApiAction**](#create-rest-api-action) | **POST** `/workflow_actions/rest_api_actions` | Create a REST API action
[**New-NERMReviewAction**](#create-review-action) | **POST** `/workflow_actions/review_actions` | Create a review action
[**New-NERMRunWorkflowAction**](#create-run-workflow-action) | **POST** `/workflow_actions/run_workflow_actions` | Create a run workflow action
[**New-NERMSetAttributesAction**](#create-set-attributes-action) | **POST** `/workflow_actions/set_attributes_actions` | Create a set attributes action
[**New-NERMSetSecurityQuestionAction**](#create-set-security-question-action) | **POST** `/workflow_actions/set_security_question_actions` | Create set security question action
[**New-NERMSoapApiAction**](#create-soap-api-action) | **POST** `/workflow_actions/soap_api_actions` | Create a SOAP API action
[**New-NERMStatusChangeAction**](#create-status-change-action) | **POST** `/workflow_actions/status_change_actions` | Create a status change action
[**New-NERMUnassignAction**](#create-unassign-action) | **POST** `/workflow_actions/unassign_actions` | Create an unassign action
[**New-NERMUpdateProfileAction**](#create-update-profile-action) | **POST** `/workflow_actions/update_profile_actions` | Create an update profile action
[**New-NERMUsernamePasswordAction**](#create-username-password-action) | **POST** `/workflow_actions/username_password_actions` | Create a username password action
[**Get-NERMWorkflowActions**](#get-workflow-actions) | **GET** `/workflow_actions` | Get Workflow Actions


## create-approval-action
Create an approval action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - workflow_action_performers, workflow_action_roles, workflow_action_performer_notification_email, workflow_action_approval_email, workflow_action_rejection_email. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-approval-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateApprovalActionRequest | [**CreateApprovalActionRequest**](../models/create-approval-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateApprovalActionRequest = @""@

# Create an approval action

try {
    $Result = ConvertFrom-NERMJsonToCreateApprovalActionRequest -Json $CreateApprovalActionRequest
    New-NERMApprovalAction -CreateApprovalActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMApprovalAction -CreateApprovalActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMApprovalAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-ask-security-question-action
Create an ask security question action

[API Spec](https://developer.sailpoint.com/docs/api//create-ask-security-question-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateAskSecurityQuestionActionRequest | [**CreateAskSecurityQuestionActionRequest**](../models/create-ask-security-question-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateAskSecurityQuestionActionRequest = @""@

# Create ask security question action

try {
    $Result = ConvertFrom-NERMJsonToCreateAskSecurityQuestionActionRequest -Json $CreateAskSecurityQuestionActionRequest
    New-NERMAskSecurityQuestionAction -CreateAskSecurityQuestionActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMAskSecurityQuestionAction -CreateAskSecurityQuestionActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMAskSecurityQuestionAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-auto-assign-action
Create an auto assign action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - workflow_action_roles. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-auto-assign-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateAutoAssignActionRequest | [**CreateAutoAssignActionRequest**](../models/create-auto-assign-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateAutoAssignActionRequest = @""@

# Create an auto assign action

try {
    $Result = ConvertFrom-NERMJsonToCreateAutoAssignActionRequest -Json $CreateAutoAssignActionRequest
    New-NERMAutoAssignAction -CreateAutoAssignActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMAutoAssignAction -CreateAutoAssignActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMAutoAssignAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-batch-update-action
Create a batch update action

[API Spec](https://developer.sailpoint.com/docs/api//create-batch-update-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateBatchUpdateActionRequest | [**CreateBatchUpdateActionRequest**](../models/create-batch-update-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateBatchUpdateActionRequest = @""@

# Create a batch update action

try {
    $Result = ConvertFrom-NERMJsonToCreateBatchUpdateActionRequest -Json $CreateBatchUpdateActionRequest
    New-NERMBatchUpdateAction -CreateBatchUpdateActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMBatchUpdateAction -CreateBatchUpdateActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMBatchUpdateAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-close-session-action
Create a close session action

[API Spec](https://developer.sailpoint.com/docs/api//create-close-session-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateCloseSessionActionRequest | [**CreateCloseSessionActionRequest**](../models/create-close-session-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateCloseSessionActionRequest = @""@

# Create a close session action

try {
    $Result = ConvertFrom-NERMJsonToCreateCloseSessionActionRequest -Json $CreateCloseSessionActionRequest
    New-NERMCloseSessionAction -CreateCloseSessionActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMCloseSessionAction -CreateCloseSessionActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMCloseSessionAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-contributors-action
Create a contributors action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - workflow_action_performers, workflow_action_roles, workflow_action_performer_notification_email. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-contributors-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateContributorsActionRequest | [**CreateContributorsActionRequest**](../models/create-contributors-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateContributorsActionRequest = @""@

# Create a contributors action

try {
    $Result = ConvertFrom-NERMJsonToCreateContributorsActionRequest -Json $CreateContributorsActionRequest
    New-NERMContributorsAction -CreateContributorsActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMContributorsAction -CreateContributorsActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMContributorsAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-create-profile-action
Create a create profile action

[API Spec](https://developer.sailpoint.com/docs/api//create-create-profile-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateCreateProfileActionRequest | [**CreateCreateProfileActionRequest**](../models/create-create-profile-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateCreateProfileActionRequest = @""@

# Create a create profile action

try {
    $Result = ConvertFrom-NERMJsonToCreateCreateProfileActionRequest -Json $CreateCreateProfileActionRequest
    New-NERMCreateProfileAction -CreateCreateProfileActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMCreateProfileAction -CreateCreateProfileActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMCreateProfileAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-duplicate-prevention-action
Create a duplicate prevention action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - duplicatation_prevention_attributes, workflow_action_performers, workflow_action_roles, workflow_action_performer_notification_email. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-duplicate-prevention-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateDuplicatePreventionActionRequest | [**CreateDuplicatePreventionActionRequest**](../models/create-duplicate-prevention-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateDuplicatePreventionActionRequest = @""@

# Create a duplicate prevention action

try {
    $Result = ConvertFrom-NERMJsonToCreateDuplicatePreventionActionRequest -Json $CreateDuplicatePreventionActionRequest
    New-NERMDuplicatePreventionAction -CreateDuplicatePreventionActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMDuplicatePreventionAction -CreateDuplicatePreventionActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMDuplicatePreventionAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-email-verification-action
Create an email verification action

[API Spec](https://developer.sailpoint.com/docs/api//create-email-verification-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateEmailVerificationActionRequest | [**CreateEmailVerificationActionRequest**](../models/create-email-verification-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateEmailVerificationActionRequest = @""@

# Create an email verification action

try {
    $Result = ConvertFrom-NERMJsonToCreateEmailVerificationActionRequest -Json $CreateEmailVerificationActionRequest
    New-NERMEmailVerificationAction -CreateEmailVerificationActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMEmailVerificationAction -CreateEmailVerificationActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMEmailVerificationAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-fulfillment-action
Create a fulfillment action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - workflow_action_performers, workflow_action_roles, workflow_action_performer_notification_email. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-fulfillment-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateFulfillmentActionRequest | [**CreateFulfillmentActionRequest**](../models/create-fulfillment-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateFulfillmentActionRequest = @""@

# Create a fulfillment action

try {
    $Result = ConvertFrom-NERMJsonToCreateFulfillmentActionRequest -Json $CreateFulfillmentActionRequest
    New-NERMFulfillmentAction -CreateFulfillmentActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMFulfillmentAction -CreateFulfillmentActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMFulfillmentAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-identity-proofing-action
Create an identity proofing action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - identity_proofing_action_configuration, identity_proofing_action_mappings. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-identity-proofing-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateIdentityProofingActionRequest | [**CreateIdentityProofingActionRequest**](../models/create-identity-proofing-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateIdentityProofingActionRequest = @""@

# Create an identity proofing action

try {
    $Result = ConvertFrom-NERMJsonToCreateIdentityProofingActionRequest -Json $CreateIdentityProofingActionRequest
    New-NERMIdentityProofingAction -CreateIdentityProofingActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMIdentityProofingAction -CreateIdentityProofingActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMIdentityProofingAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-invitation-action
Create an invitation action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - workflow_action_pause_action. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-invitation-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateInvitationActionRequest | [**CreateInvitationActionRequest**](../models/create-invitation-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateInvitationActionRequest = @""@

# Create an invitation action

try {
    $Result = ConvertFrom-NERMJsonToCreateInvitationActionRequest -Json $CreateInvitationActionRequest
    New-NERMInvitationAction -CreateInvitationActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMInvitationAction -CreateInvitationActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMInvitationAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-ldap-action
Create a ldap action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - workflow_action_performers, workflow_action_roles. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-ldap-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateLdapActionRequest | [**CreateLdapActionRequest**](../models/create-ldap-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateLdapActionRequest = @""@

# Create a ldap action

try {
    $Result = ConvertFrom-NERMJsonToCreateLdapActionRequest -Json $CreateLdapActionRequest
    New-NERMLdapAction -CreateLdapActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMLdapAction -CreateLdapActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMLdapAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-notification-action
Create a notification action

[API Spec](https://developer.sailpoint.com/docs/api//create-notification-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateNotificationActionRequest | [**CreateNotificationActionRequest**](../models/create-notification-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateNotificationActionRequest = @""@

# Create a notification action

try {
    $Result = ConvertFrom-NERMJsonToCreateNotificationActionRequest -Json $CreateNotificationActionRequest
    New-NERMNotificationAction -CreateNotificationActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMNotificationAction -CreateNotificationActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMNotificationAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-password-reset-action
Create a password reset action

[API Spec](https://developer.sailpoint.com/docs/api//create-password-reset-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreatePasswordResetActionRequest | [**CreatePasswordResetActionRequest**](../models/create-password-reset-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreatePasswordResetActionRequest = @""@

# Create a password reset action

try {
    $Result = ConvertFrom-NERMJsonToCreatePasswordResetActionRequest -Json $CreatePasswordResetActionRequest
    New-NERMPasswordResetAction -CreatePasswordResetActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMPasswordResetAction -CreatePasswordResetActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMPasswordResetAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-profile-check-action
Create a profile check action

[API Spec](https://developer.sailpoint.com/docs/api//create-profile-check-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateProfileCheckActionRequest | [**CreateProfileCheckActionRequest**](../models/create-profile-check-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateProfileCheckActionRequest = @""@

# Create a profile check action

try {
    $Result = ConvertFrom-NERMJsonToCreateProfileCheckActionRequest -Json $CreateProfileCheckActionRequest
    New-NERMProfileCheckAction -CreateProfileCheckActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMProfileCheckAction -CreateProfileCheckActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMProfileCheckAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-profile-select-action
Create a profile select action

[API Spec](https://developer.sailpoint.com/docs/api//create-profile-select-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateProfileSelectActionRequest | [**CreateProfileSelectActionRequest**](../models/create-profile-select-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateProfileSelectActionRequest = @""@

# Create a profile select action

try {
    $Result = ConvertFrom-NERMJsonToCreateProfileSelectActionRequest -Json $CreateProfileSelectActionRequest
    New-NERMProfileSelectAction -CreateProfileSelectActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMProfileSelectAction -CreateProfileSelectActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMProfileSelectAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-request-action
Create a request action

[API Spec](https://developer.sailpoint.com/docs/api//create-request-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateRequestActionRequest | [**CreateRequestActionRequest**](../models/create-request-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateRequestActionRequest = @""@

# Create a request action

try {
    $Result = ConvertFrom-NERMJsonToCreateRequestActionRequest -Json $CreateRequestActionRequest
    New-NERMRequestAction -CreateRequestActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMRequestAction -CreateRequestActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMRequestAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-rest-api-action
Create a REST API action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - rest_api_action_configuration, api_configuration_attributes. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-rest-api-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateRestApiActionRequest | [**CreateRestApiActionRequest**](../models/create-rest-api-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateRestApiActionRequest = @""@

# Create a REST API action

try {
    $Result = ConvertFrom-NERMJsonToCreateRestApiActionRequest -Json $CreateRestApiActionRequest
    New-NERMRestApiAction -CreateRestApiActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMRestApiAction -CreateRestApiActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMRestApiAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-review-action
Create a review action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - workflow_action_performer_notification_email. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-review-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateReviewActionRequest | [**CreateReviewActionRequest**](../models/create-review-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateReviewActionRequest = @""@

# Create a review action

try {
    $Result = ConvertFrom-NERMJsonToCreateReviewActionRequest -Json $CreateReviewActionRequest
    New-NERMReviewAction -CreateReviewActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMReviewAction -CreateReviewActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMReviewAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-run-workflow-action
Create a run workflow action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - configuration_profile_attribute. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-run-workflow-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateRunWorkflowActionRequest | [**CreateRunWorkflowActionRequest**](../models/create-run-workflow-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateRunWorkflowActionRequest = @""@

# Create a run workflow action

try {
    $Result = ConvertFrom-NERMJsonToCreateRunWorkflowActionRequest -Json $CreateRunWorkflowActionRequest
    New-NERMRunWorkflowAction -CreateRunWorkflowActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMRunWorkflowAction -CreateRunWorkflowActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMRunWorkflowAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-set-attributes-action
Create a set attributes action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - workflow_action_set_attributes. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-set-attributes-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateSetAttributesActionRequest | [**CreateSetAttributesActionRequest**](../models/create-set-attributes-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateSetAttributesActionRequest = @""@

# Create a set attributes action

try {
    $Result = ConvertFrom-NERMJsonToCreateSetAttributesActionRequest -Json $CreateSetAttributesActionRequest
    New-NERMSetAttributesAction -CreateSetAttributesActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMSetAttributesAction -CreateSetAttributesActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMSetAttributesAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-set-security-question-action
Create a set security question action

[API Spec](https://developer.sailpoint.com/docs/api//create-set-security-question-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateSetSecurityQuestionActionRequest | [**CreateSetSecurityQuestionActionRequest**](../models/create-set-security-question-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateSetSecurityQuestionActionRequest = @""@

# Create set security question action

try {
    $Result = ConvertFrom-NERMJsonToCreateSetSecurityQuestionActionRequest -Json $CreateSetSecurityQuestionActionRequest
    New-NERMSetSecurityQuestionAction -CreateSetSecurityQuestionActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMSetSecurityQuestionAction -CreateSetSecurityQuestionActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMSetSecurityQuestionAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-soap-api-action
Create a SOAP API action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - soap_api_action_configuration, api_configuration_attributes. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-soap-api-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateSoapApiActionRequest | [**CreateSoapApiActionRequest**](../models/create-soap-api-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateSoapApiActionRequest = @""@

# Create a SOAP API action

try {
    $Result = ConvertFrom-NERMJsonToCreateSoapApiActionRequest -Json $CreateSoapApiActionRequest
    New-NERMSoapApiAction -CreateSoapApiActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMSoapApiAction -CreateSoapApiActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMSoapApiAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-status-change-action
Create a status change action

[API Spec](https://developer.sailpoint.com/docs/api//create-status-change-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateStatusChangeActionRequest | [**CreateStatusChangeActionRequest**](../models/create-status-change-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateStatusChangeActionRequest = @""@

# Create a status change action

try {
    $Result = ConvertFrom-NERMJsonToCreateStatusChangeActionRequest -Json $CreateStatusChangeActionRequest
    New-NERMStatusChangeAction -CreateStatusChangeActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMStatusChangeAction -CreateStatusChangeActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMStatusChangeAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-unassign-action
Create an unassign action. The following supporting objects will need to be created after this action is created (which are tied together via workflow_action_id) - workflow_action_roles. These supporting objects must be created for this action to be complete (APIs for these supporting objects not yet implemented, use UI).

[API Spec](https://developer.sailpoint.com/docs/api//create-unassign-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateUnassignActionRequest | [**CreateUnassignActionRequest**](../models/create-unassign-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateUnassignActionRequest = @""@

# Create an unassign action

try {
    $Result = ConvertFrom-NERMJsonToCreateUnassignActionRequest -Json $CreateUnassignActionRequest
    New-NERMUnassignAction -CreateUnassignActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMUnassignAction -CreateUnassignActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMUnassignAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-update-profile-action
Create an update profile action

[API Spec](https://developer.sailpoint.com/docs/api//create-update-profile-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateUpdateProfileActionRequest | [**CreateUpdateProfileActionRequest**](../models/create-update-profile-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateUpdateProfileActionRequest = @""@

# Create an update profile action

try {
    $Result = ConvertFrom-NERMJsonToCreateUpdateProfileActionRequest -Json $CreateUpdateProfileActionRequest
    New-NERMUpdateProfileAction -CreateUpdateProfileActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMUpdateProfileAction -CreateUpdateProfileActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMUpdateProfileAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## create-username-password-action
Create a username password action

[API Spec](https://developer.sailpoint.com/docs/api//create-username-password-action)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | CreateUsernamePasswordActionRequest | [**CreateUsernamePasswordActionRequest**](../models/create-username-password-action-request) | True  | 

### Return type
[**CreateApprovalAction200Response**](../models/create-approval-action200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | CreateApprovalAction200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$CreateUsernamePasswordActionRequest = @""@

# Create a username password action

try {
    $Result = ConvertFrom-NERMJsonToCreateUsernamePasswordActionRequest -Json $CreateUsernamePasswordActionRequest
    New-NERMUsernamePasswordAction -CreateUsernamePasswordActionRequest $Result 
    
    # Below is a request that includes all optional parameters
    # New-NERMUsernamePasswordAction -CreateUsernamePasswordActionRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-NERMUsernamePasswordAction"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-workflow-actions
This endpoint can retrieve workflow actions

[API Spec](https://developer.sailpoint.com/docs/api//get-workflow-actions)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | WorkflowId | **String** |   (optional) | Workflow ID for filtering

### Return type
[**GetWorkflowActions200Response**](../models/get-workflow-actions200-response)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Expected response to a valid request | GetWorkflowActions200Response
400 | Bad Request - unable to complete. | GetAttributes400Response
500 | Internal Server Error - returned on unhandled exceptions. | GetAttributes500Response

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$WorkflowId = "bba9cfb2-96c1-4acb-ac79-a21732527265" # String | Workflow ID for filtering (optional)

# Get Workflow Actions

try {
    Get-NERMWorkflowActions 
    
    # Below is a request that includes all optional parameters
    # Get-NERMWorkflowActions -WorkflowId $WorkflowId  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-NERMWorkflowActions"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
