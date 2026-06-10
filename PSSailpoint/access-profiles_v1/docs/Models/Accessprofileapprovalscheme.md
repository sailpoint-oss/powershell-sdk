---
id: accessprofileapprovalscheme
title: Accessprofileapprovalscheme
pagination_label: Accessprofileapprovalscheme
sidebar_label: Accessprofileapprovalscheme
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Accessprofileapprovalscheme', 'Accessprofileapprovalscheme'] 
slug: /tools/sdk/powershell/accessprofilesv1/models/accessprofileapprovalscheme
tags: ['SDK', 'Software Development Kit', 'Accessprofileapprovalscheme', 'Accessprofileapprovalscheme']
---


# Accessprofileapprovalscheme

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ApproverType** |  **Enum** [  "APP_OWNER",    "OWNER",    "SOURCE_OWNER",    "MANAGER",    "GOVERNANCE_GROUP",    "WORKFLOW" ] | Describes the individual or group that is responsible for an approval step. These are the possible values: **APP_OWNER**: The owner of the Application  **OWNER**: Owner of the associated Access Profile or Role  **SOURCE_OWNER**: Owner of the Source associated with an Access Profile  **MANAGER**: Manager of the Identity making the request  **GOVERNANCE_GROUP**: A Governance Group, the ID of which is specified by the **approverId** field  **WORKFLOW**: A Workflow, the ID of which is specified by the **approverId** field. Workflow is exclusive to other types of approvals and License required.  | [optional] 
**ApproverId** | **String** | Id of the specific approver, used when approverType is GOVERNANCE_GROUP or WORKFLOW. | [optional] 

## Examples

- Prepare the resource
```powershell
$Accessprofileapprovalscheme = Initialize-Accessprofileapprovalscheme  -ApproverType GOVERNANCE_GROUP `
 -ApproverId 46c79819-a69f-49a2-becb-12c971ae66c6
```

- Convert the resource to JSON
```powershell
$Accessprofileapprovalscheme | ConvertTo-JSON
```


[[Back to top]](#) 

