---
id: beta-roles
title: Roles
pagination_label: Roles
sidebar_label: Roles
sidebar_class_name: powershellsdk
keywords: ['powershell', 'PowerShell', 'sdk', 'Roles', 'BetaRoles'] 
slug: /tools/sdk/powershell/beta/methods/roles
tags: ['SDK', 'Software Development Kit', 'Roles', 'BetaRoles']
---

# Roles
  Use this API to implement and customize role functionality.
With this functionality in place, administrators can create roles and configure them for use throughout Identity Security Cloud.
Identity Security Cloud can use established criteria to automatically assign the roles to qualified users. This enables users to get all the access they need quickly and securely and administrators to spend their time on other tasks.

Entitlements represent the most granular level of access in Identity Security Cloud.
Access profiles represent the next level and often group entitlements.
Roles represent the broadest level of access and often group access profiles.

For example, an Active Directory source in Identity Security Cloud can have multiple entitlements: the first, &#39;Employees,&#39; may represent the access all employees have at the organization, and a second, &#39;Developers,&#39; may represent the access all developers have at the organization.

An administrator can then create a broader set of access in the form of an access profile, &#39;AD Developers&#39; grouping the &#39;Employees&#39; entitlement with the &#39;Developers&#39; entitlement.

An administrator can then create an even broader set of access in the form of a role grouping the &#39;AD Developers&#39; access profile with another profile, &#39;GitHub Developers,&#39; grouping entitlements for the GitHub source.

When users only need Active Directory employee access, they can request access to the &#39;Employees&#39; entitlement.

When users need both Active Directory employee and developer access, they can request access to the &#39;AD Developers&#39; access profile.

When users need both the &#39;AD Developers&#39; access profile and the &#39;GitHub Developers&#39; access profile, they can request access to the role grouping both.

Roles often represent positions within organizations.
For example, an organization&#39;s accountant can access all the tools the organization&#39;s accountants need with the &#39;Accountant&#39; role.
If the accountant switches to engineering, a qualified member of the organization can quickly revoke the accountant&#39;s &#39;Accountant&#39; access and grant access to the &#39;Engineer&#39; role instead, granting access to all the tools the organization&#39;s engineers need.

In Identity Security Cloud, adminstrators can use the Access drop-down menu and select Roles to view, configure, and delete existing roles, as well as create new ones.
Administrators can enable and disable the role, and they can also make the following configurations:

- Manage Access: Manage the role&#39;s access by adding or removing access profiles.

- Define Assignment: Define the criteria Identity Security Cloud uses to assign the role to identities.
Use the first option, &#39;Standard Criteria,&#39; to provide specific criteria for assignment like specific account attributes, entitlements, or identity attributes.
Use the second, &#39;Identity List,&#39; to specify the identities for assignment.

- Access Requests: Configure roles to be requestable and establish an approval process for any requests that the role be granted or revoked.
Do not configure a role to be requestable without establishing a secure access request approval process for that role first.

Refer to [Working with Roles](https://documentation.sailpoint.com/saas/help/access/roles.html) for more information about roles.
 
  

All URIs are relative to *https://sailpoint.api.identitynow.com/beta*

Method | HTTP request | Description
------------- | ------------- | -------------
[**New-BetaRole**](#create-role) | **POST** `/roles` | Create a role
[**Remove-BetaBulkRoles**](#delete-bulk-roles) | **POST** `/roles/bulk-delete` | Delete role(s)
[**Remove-BetaRole**](#delete-role) | **DELETE** `/roles/{id}` | Delete a role
[**Get-BetaRole**](#get-role) | **GET** `/roles/{id}` | Get a role
[**Get-BetaRoleAssignedIdentities**](#get-role-assigned-identities) | **GET** `/roles/{id}/assigned-identities` | Identities assigned a role
[**Get-BetaRoleEntitlements**](#get-role-entitlements) | **GET** `/roles/{id}/entitlements` | List role&#39;s entitlements
[**Get-BetaRoles**](#list-roles) | **GET** `/roles` | List roles
[**Update-BetaRole**](#patch-role) | **PATCH** `/roles/{id}` | Patch a specified role


## create-role
This API creates a role.

You must have a token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority to call this API. 

In addition, a ROLE_SUBADMIN may not create a role including an access profile if that access profile is associated with a source the ROLE_SUBADMIN is not associated with themselves. 

The maximum supported length for the description field is 2000 characters. Longer descriptions will be preserved for existing roles. However, any new roles as well as any updates to existing descriptions will be limited to 2000 characters.

[API Spec](https://developer.sailpoint.com/docs/api/beta/create-role)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | Role | [**Role**](../models/role) | True  | 

### Return type
[**Role**](../models/role)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
201 | Role created | Role
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessModelMetadataAttribute401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessModelMetadataAttribute429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$Role = @"{
  "owner" : {
    "name" : "support",
    "id" : "2c9180a46faadee4016fb4e018c20639",
    "type" : "IDENTITY"
  },
  "entitlements" : [ {
    "name" : "CN=entitlement.490efde5,OU=OrgCo,OU=ServiceDept,DC=HQAD,DC=local",
    "id" : "2c91809773dee32014e13e122092014e",
    "type" : "ENTITLEMENT"
  }, {
    "name" : "CN=entitlement.490efde5,OU=OrgCo,OU=ServiceDept,DC=HQAD,DC=local",
    "id" : "2c91809773dee32014e13e122092014e",
    "type" : "ENTITLEMENT"
  } ],
  "dimensional" : false,
  "created" : "2021-03-01T22:32:58.104Z",
  "dimensionRefs" : [ {
    "name" : "Role 2",
    "id" : "2c91808568c529c60168cca6f90c1313",
    "type" : "DIMENSION"
  }, {
    "name" : "Role 2",
    "id" : "2c91808568c529c60168cca6f90c1313",
    "type" : "DIMENSION"
  } ],
  "description" : "Urna amet cursus pellentesque nisl orci maximus lorem nisl euismod fusce morbi placerat adipiscing maecenas nisi tristique et metus et lacus sed morbi nunc nisl maximus magna arcu varius sollicitudin elementum enim maecenas nisi id ipsum tempus fusce diam ipsum tortor.",
  "membership" : {
    "identities" : [ {
      "aliasName" : "t.edison",
      "name" : "Thomas Edison",
      "id" : "2c9180a46faadee4016fb4e018c20639",
      "type" : "IDENTITY"
    }, {
      "aliasName" : "t.edison",
      "name" : "Thomas Edison",
      "id" : "2c9180a46faadee4016fb4e018c20639",
      "type" : "IDENTITY"
    } ],
    "criteria" : {
      "stringValue" : "carlee.cert1c9f9b6fd@mailinator.com",
      "children" : [ {
        "stringValue" : "carlee.cert1c9f9b6fd@mailinator.com",
        "children" : [ {
          "stringValue" : "carlee.cert1c9f9b6fd@mailinator.com",
          "operation" : "EQUALS",
          "key" : {
            "sourceId" : "2c9180867427f3a301745aec18211519",
            "property" : "attribute.email",
            "type" : "ACCOUNT"
          }
        }, {
          "stringValue" : "carlee.cert1c9f9b6fd@mailinator.com",
          "operation" : "EQUALS",
          "key" : {
            "sourceId" : "2c9180867427f3a301745aec18211519",
            "property" : "attribute.email",
            "type" : "ACCOUNT"
          }
        } ],
        "operation" : "EQUALS",
        "key" : {
          "sourceId" : "2c9180867427f3a301745aec18211519",
          "property" : "attribute.email",
          "type" : "ACCOUNT"
        }
      }, {
        "stringValue" : "carlee.cert1c9f9b6fd@mailinator.com",
        "children" : [ {
          "stringValue" : "carlee.cert1c9f9b6fd@mailinator.com",
          "operation" : "EQUALS",
          "key" : {
            "sourceId" : "2c9180867427f3a301745aec18211519",
            "property" : "attribute.email",
            "type" : "ACCOUNT"
          }
        }, {
          "stringValue" : "carlee.cert1c9f9b6fd@mailinator.com",
          "operation" : "EQUALS",
          "key" : {
            "sourceId" : "2c9180867427f3a301745aec18211519",
            "property" : "attribute.email",
            "type" : "ACCOUNT"
          }
        } ],
        "operation" : "EQUALS",
        "key" : {
          "sourceId" : "2c9180867427f3a301745aec18211519",
          "property" : "attribute.email",
          "type" : "ACCOUNT"
        }
      } ],
      "operation" : "EQUALS",
      "key" : {
        "sourceId" : "2c9180867427f3a301745aec18211519",
        "property" : "attribute.email",
        "type" : "ACCOUNT"
      }
    },
    "type" : "IDENTITY_LIST"
  },
  "enabled" : true,
  "revocationRequestConfig" : {
    "commentsRequired" : false,
    "approvalSchemes" : [ {
      "approverId" : "46c79819-a69f-49a2-becb-12c971ae66c6",
      "approverType" : "GOVERNANCE_GROUP"
    }, {
      "approverId" : "46c79819-a69f-49a2-becb-12c971ae66c6",
      "approverType" : "GOVERNANCE_GROUP"
    } ],
    "denialCommentsRequired" : false
  },
  "segments" : [ "f7b1b8a3-5fed-4fd4-ad29-82014e137e19", "29cb6c06-1da8-43ea-8be4-b3125f248f2a" ],
  "legacyMembershipInfo" : {
    "type" : "IDENTITY_LIST"
  },
  "accessRequestConfig" : {
    "commentsRequired" : true,
    "reauthorizationRequired" : true,
    "approvalSchemes" : [ {
      "approverId" : "46c79819-a69f-49a2-becb-12c971ae66c6",
      "approverType" : "GOVERNANCE_GROUP"
    }, {
      "approverId" : "46c79819-a69f-49a2-becb-12c971ae66c6",
      "approverType" : "GOVERNANCE_GROUP"
    } ],
    "denialCommentsRequired" : true
  },
  "accessProfiles" : [ {
    "name" : "Access Profile 2567",
    "id" : "ff808081751e6e129f1518161919ecca",
    "type" : "ACCESS_PROFILE"
  }, {
    "name" : "Access Profile 2567",
    "id" : "ff808081751e6e129f1518161919ecca",
    "type" : "ACCESS_PROFILE"
  } ],
  "name" : "Role 2567",
  "modified" : "2021-03-02T20:22:28.104Z",
  "accessModelMetadata" : {
    "attributes" : [ {
      "key" : "iscPrivacy",
      "name" : "Privacy",
      "multiselect" : false,
      "status" : "active",
      "type" : "governance",
      "objectTypes" : [ "all" ],
      "description" : "Specifies the level of privacy associated with an access item.",
      "values" : [ {
        "value" : "public",
        "name" : "Public",
        "status" : "active"
      } ]
    } ]
  },
  "id" : "2c918086749d78830174a1a40e121518",
  "requestable" : true
}"@

# Create a role

try {
    $Result = ConvertFrom-JsonToRole -Json $Role
    New-BetaRole -Role $Result 
    
    # Below is a request that includes all optional parameters
    # New-BetaRole -Role $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling New-BetaRole"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-bulk-roles
This endpoint initiates a bulk deletion of one or more roles.
When the request is successful, the endpoint returns the bulk delete's task result ID.  To follow the task, you can use [Get Task Status by ID](https://developer.sailpoint.com/docs/api/beta/get-task-status), which will return the task result's status and information. 
This endpoint can only bulk delete up to a limit of 50 roles per request. 
A token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority is required to call this endpoint. In addition, a token with ROLE_SUBADMIN authority can only call this endpoint if all roles included in the request are associated with sources with management workgroups the ROLE_SUBADMIN is a member of.

[API Spec](https://developer.sailpoint.com/docs/api/beta/delete-bulk-roles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
 Body  | RoleBulkDeleteRequest | [**RoleBulkDeleteRequest**](../models/role-bulk-delete-request) | True  | 

### Return type
[**TaskResultDto**](../models/task-result-dto)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
202 | Returns an object with the id of the task performing the delete operation. | TaskResultDto
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessModelMetadataAttribute401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessModelMetadataAttribute429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json
- **Accept**: application/json

### Example
```powershell
$RoleBulkDeleteRequest = @"{
  "roleIds" : [ "2c9180847812e0b1017817051919ecca", "2c9180887812e0b201781e129f151816" ]
}"@

# Delete role(s)

try {
    $Result = ConvertFrom-JsonToRoleBulkDeleteRequest -Json $RoleBulkDeleteRequest
    Remove-BetaBulkRoles -RoleBulkDeleteRequest $Result 
    
    # Below is a request that includes all optional parameters
    # Remove-BetaBulkRoles -RoleBulkDeleteRequest $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-BetaBulkRoles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## delete-role
This API deletes a Role by its ID.

A token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority is required to call this API. In addition, a token with ROLE_SUBADMIN authority may only call this API if all Access Profiles included in the Role are associated to Sources with management workgroups of which the ROLE_SUBADMIN is a member.

[API Spec](https://developer.sailpoint.com/docs/api/beta/delete-role)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the Role

### Return type
 (empty response body)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
204 | No content - indicates the request was successful but there is no content to be returned in the response. | 
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessModelMetadataAttribute401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessModelMetadataAttribute429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "2c91808a7813090a017814121e121518" # String | ID of the Role

# Delete a role

try {
    Remove-BetaRole -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Remove-BetaRole -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Remove-BetaRole"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-role
This API returns a Role by its ID.
A token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority is required to call this API. In addition, a token with ROLE_SUBADMIN authority may only call this API if all Access Profiles included in the Role are associated to Sources with management workgroups of which the ROLE_SUBADMIN is a member.

[API Spec](https://developer.sailpoint.com/docs/api/beta/get-role)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the Role

### Return type
[**Role**](../models/role)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | List of all Roles | Role
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessModelMetadataAttribute401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
404 | Not Found - returned if the request URL refers to a resource or object that does not exist | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessModelMetadataAttribute429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "2c91808a7813090a017814121e121518" # String | ID of the Role

# Get a role

try {
    Get-BetaRole -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-BetaRole -Id $Id  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-BetaRole"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-role-assigned-identities


[API Spec](https://developer.sailpoint.com/docs/api/beta/get-role-assigned-identities)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the Role for which the assigned Identities are to be listed
  Query | Limit | **Int32** |   (optional) (default to 250) | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Offset | **Int32** |   (optional) (default to 0) | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Filters | **String** |   (optional) | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **aliasName**: *eq, sw*  **email**: *eq, sw*  **name**: *eq, sw, co*
  Query | Sorters | **String** |   (optional) | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, aliasName, email**

### Return type
[**RoleIdentity[]**](../models/role-identity)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | List of Identities assigned the Role | RoleIdentity[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessModelMetadataAttribute401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessModelMetadataAttribute429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "2c91808a7813090a017814121e121518" # String | ID of the Role for which the assigned Identities are to be listed
$Limit = 250 # Int32 | Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 250)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = 'name sw Joe' # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **aliasName**: *eq, sw*  **email**: *eq, sw*  **name**: *eq, sw, co* (optional)
$Sorters = "aliasName,name" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, aliasName, email** (optional)

# Identities assigned a role

try {
    Get-BetaRoleAssignedIdentities -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-BetaRoleAssignedIdentities -Id $Id -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-BetaRoleAssignedIdentities"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## get-role-entitlements
Get a list of entitlements associated with a specified role.

[API Spec](https://developer.sailpoint.com/docs/api/beta/get-role-entitlements)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | Containing role's ID.
  Query | Limit | **Int32** |   (optional) (default to 50) | Note that for this API the maximum value for limit is 50. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Offset | **Int32** |   (optional) (default to 0) | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Filters | **String** |   (optional) | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **attribute**: *eq, sw*  **value**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **source.id**: *eq, in*
  Query | Sorters | **String** |   (optional) | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, attribute, value, created, modified**

### Return type
[**Entitlement[]**](../models/entitlement)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | List of Entitlements | Entitlement[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessModelMetadataAttribute401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessModelMetadataAttribute429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$Id = "2c91808a7813090a017814121919ecca" # String | Containing role's ID.
$Limit = 50 # Int32 | Note that for this API the maximum value for limit is 50. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 50)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = 'attribute eq "memberOf"' # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **attribute**: *eq, sw*  **value**: *eq, sw*  **created**: *gt, lt, ge, le*  **modified**: *gt, lt, ge, le*  **owner.id**: *eq, in*  **source.id**: *eq, in* (optional)
$Sorters = "name,-modified" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, attribute, value, created, modified** (optional)

# List role's entitlements

try {
    Get-BetaRoleEntitlements -Id $Id 
    
    # Below is a request that includes all optional parameters
    # Get-BetaRoleEntitlements -Id $Id -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-BetaRoleEntitlements"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## list-roles
This API returns a list of Roles.

A token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority is required to call this API.

[API Spec](https://developer.sailpoint.com/docs/api/beta/list-roles)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
  Query | ForSubadmin | **String** |   (optional) | If provided, filters the returned list according to what is visible to the indicated ROLE_SUBADMIN Identity. The value of the parameter is either an Identity ID, or the special value **me**, which is shorthand for the calling Identity's ID. A 400 Bad Request error is returned if the **for-subadmin** parameter is specified for an Identity that is not a subadmin.
  Query | Limit | **Int32** |   (optional) (default to 50) | Note that for this API the maximum value for limit is 50. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Offset | **Int32** |   (optional) (default to 0) | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Count | **Boolean** |   (optional) (default to $false) | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.
  Query | Filters | **String** |   (optional) | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, ge, le*  **modified**: *lt, ge, le*  **owner.id**: *eq, in*  **requestable**: *eq*  **dimensional**: *eq*
  Query | Sorters | **String** |   (optional) | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified**
  Query | ForSegmentIds | **String** |   (optional) | If present and not empty, additionally filters Roles to those which are assigned to the Segment(s) with the specified IDs.  If segmentation is currently unavailable, specifying this parameter results in an error.
  Query | IncludeUnsegmented | **Boolean** |   (optional) (default to $true) | Whether or not the response list should contain unsegmented Roles. If *for-segment-ids* is absent or empty, specifying *include-unsegmented* as false results in an error.

### Return type
[**Role[]**](../models/role)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | List of Roles | Role[]
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessModelMetadataAttribute401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessModelMetadataAttribute429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: Not defined
- **Accept**: application/json

### Example
```powershell
$ForSubadmin = "5168015d32f890ca15812c9180835d2e" # String | If provided, filters the returned list according to what is visible to the indicated ROLE_SUBADMIN Identity. The value of the parameter is either an Identity ID, or the special value **me**, which is shorthand for the calling Identity's ID. A 400 Bad Request error is returned if the **for-subadmin** parameter is specified for an Identity that is not a subadmin. (optional)
$Limit = 50 # Int32 | Note that for this API the maximum value for limit is 50. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 50)
$Offset = 0 # Int32 | Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to 0)
$Count = $true # Boolean | If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information. (optional) (default to $false)
$Filters = 'requestable eq false' # String | Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in*  **name**: *eq, sw*  **created**: *gt, ge, le*  **modified**: *lt, ge, le*  **owner.id**: *eq, in*  **requestable**: *eq*  **dimensional**: *eq* (optional)
$Sorters = "name,-modified" # String | Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name, created, modified** (optional)
$ForSegmentIds = "0b5c9f25-83c6-4762-9073-e38f7bb2ae26,2e8d8180-24bc-4d21-91c6-7affdb473b0d" # String | If present and not empty, additionally filters Roles to those which are assigned to the Segment(s) with the specified IDs.  If segmentation is currently unavailable, specifying this parameter results in an error. (optional)
$IncludeUnsegmented = $false # Boolean | Whether or not the response list should contain unsegmented Roles. If *for-segment-ids* is absent or empty, specifying *include-unsegmented* as false results in an error. (optional) (default to $true)

# List roles

try {
    Get-BetaRoles 
    
    # Below is a request that includes all optional parameters
    # Get-BetaRoles -ForSubadmin $ForSubadmin -Limit $Limit -Offset $Offset -Count $Count -Filters $Filters -Sorters $Sorters -ForSegmentIds $ForSegmentIds -IncludeUnsegmented $IncludeUnsegmented  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Get-BetaRoles"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 

## patch-role
This API updates an existing role using [JSON Patch](https://tools.ietf.org/html/rfc6902) syntax.

The following fields are patchable:

* name
* description
* enabled
* owner
* accessProfiles
* entitlements
* membership
* requestable
* accessRequestConfig
* revokeRequestConfig
* segments
* accessModelMetadata   
A token with API, ORG_ADMIN, ROLE_ADMIN, or ROLE_SUBADMIN authority is required to call this API. In addition, a token with ROLE_SUBADMIN authority may only call this API if all access profiles included in the role are associated to Sources with management workgroups of which the ROLE_SUBADMIN is a member.

The maximum supported length for the description field is 2000 characters. Longer descriptions will be preserved for existing roles, however, any new roles as well as any updates to existing descriptions will be limited to 2000 characters.

When you use this API to modify a role's membership identities, you can only modify up to a limit of 500 membership identities at a time. 

[API Spec](https://developer.sailpoint.com/docs/api/beta/patch-role)

### Parameters 
Param Type | Name | Data Type | Required  | Description
------------- | ------------- | ------------- | ------------- | ------------- 
Path   | Id | **String** | True  | ID of the Role to patch
 Body  | JsonPatchOperation | [**[]JsonPatchOperation**](../models/json-patch-operation) | True  | 

### Return type
[**Role**](../models/role)

### Responses
Code | Description  | Data Type
------------- | ------------- | -------------
200 | Responds with the Role as updated. | Role
400 | Client Error - Returned if the request body is invalid. | ErrorResponseDto
401 | Unauthorized - Returned if there is no authorization header, or if the JWT token is expired. | ListAccessModelMetadataAttribute401Response
403 | Forbidden - Returned if the user you are running as, doesn&#39;t have access to this end-point. | ErrorResponseDto
429 | Too Many Requests - Returned in response to too many requests in a given period of time - rate limited. The Retry-After header in the response includes how long to wait before trying again. | ListAccessModelMetadataAttribute429Response
500 | Internal Server Error - Returned if there is an unexpected error. | ErrorResponseDto

### HTTP request headers
- **Content-Type**: application/json-patch+json
- **Accept**: application/json

### Example
```powershell
$Id = "2c91808a7813090a017814121e121518" # String | ID of the Role to patch
 $JsonPatchOperation = @"{
  "op" : "replace",
  "path" : "/description",
  "value" : "New description"
}"@ # JsonPatchOperation[] | 
 

# Patch a specified role

try {
    $Result = ConvertFrom-JsonToJsonPatchOperation -Json $JsonPatchOperation
    Update-BetaRole -Id $Id -JsonPatchOperation $Result 
    
    # Below is a request that includes all optional parameters
    # Update-BetaRole -Id $Id -JsonPatchOperation $Result  
} catch {
    Write-Host $_.Exception.Response.StatusCode.value__ "Exception occurred when calling Update-BetaRole"
    Write-Host $_.ErrorDetails
}
```
[[Back to top]](#) 
