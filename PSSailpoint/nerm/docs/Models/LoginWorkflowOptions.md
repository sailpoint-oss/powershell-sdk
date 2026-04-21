---
id: nerm-login-workflow-options
title: LoginWorkflowOptions
pagination_label: LoginWorkflowOptions
sidebar_label: LoginWorkflowOptions
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'LoginWorkflowOptions', 'NERMLoginWorkflowOptions'] 
slug: /tools/sdk/powershell/nerm/models/login-workflow-options
tags: ['SDK', 'Software Development Kit', 'LoginWorkflowOptions', 'NERMLoginWorkflowOptions']
---


# LoginWorkflowOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpirationTime** | **Int32** | Used for login/password reset for when the password will expire. | [optional] 

## Examples

- Prepare the resource
```powershell
$LoginWorkflowOptions = Initialize-NERMLoginWorkflowOptions  -ExpirationTime 1
```

- Convert the resource to JSON
```powershell
$LoginWorkflowOptions | ConvertTo-JSON
```


[[Back to top]](#) 

