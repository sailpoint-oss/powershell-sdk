#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Cancel Access Request

.DESCRIPTION

This API endpoint cancels a pending access request. An access request can be cancelled only if it has not passed the approval step. Any token with ORG_ADMIN authority or token of the user who originally requested the access request is required to cancel it.

.PARAMETER CancelAccessRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SystemCollectionsHashtable
#>
function Suspend-BetaAccessRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${CancelAccessRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Suspend-BetaAccessRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/access-requests/cancel'

        if (!$CancelAccessRequest) {
            throw "Error! The required parameter `CancelAccessRequest` missing when calling cancelAccessRequest."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($CancelAccessRequest -is [array])) {
            $LocalVarBodyParameter = $CancelAccessRequest | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $CancelAccessRequest | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SystemCollectionsHashtable" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Close Access Request

.DESCRIPTION

This endpoint closes access requests that are stuck in a pending state. It can be used throughout a request's lifecycle even after the approval state, unlike the [Cancel Access Request endpoint](https://developer.sailpoint.com/idn/api/v3/cancel-access-request/). A token with ORG_ADMIN authority is required.  To find pending access requests with the UI, navigate to Search and use this query: status: Pending AND ""Access Request"". Use the Column Chooser to select 'Tracking Number', and use the 'Download' button to export a CSV containing the tracking numbers.  To find pending access requests with the API, use the [List Account Activities endpoint](https://developer.sailpoint.com/idn/api/v3/list-account-activities/).  Input the IDs from either source.  To track the status of endpoint requests, navigate to Search and use this query: name:""Close Identity Requests"". Search will include ""Close Identity Requests Started"" audits when requests are initiated and ""Close Identity Requests Completed"" audits when requests are completed. The completion audit will list the identity request IDs that finished in error.  This API triggers the [Provisioning Completed event trigger](https://developer.sailpoint.com/idn/docs/event-triggers/triggers/provisioning-completed/) for each access request that is closed. 

.PARAMETER CloseAccessRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SystemCollectionsHashtable
#>
function Close-BetaAccessRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${CloseAccessRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Close-BetaAccessRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/access-requests/close'

        if (!$CloseAccessRequest) {
            throw "Error! The required parameter `CloseAccessRequest` missing when calling closeAccessRequest."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($CloseAccessRequest -is [array])) {
            $LocalVarBodyParameter = $CloseAccessRequest | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $CloseAccessRequest | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SystemCollectionsHashtable" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Submit Access Request

.DESCRIPTION

Use this API to submit an access request in Identity Security Cloud (ISC), where it follows any ISC approval processes.  Access requests are processed asynchronously by ISC. A successful response from this endpoint means that the request has been submitted to ISC and is queued for processing. Because this endpoint is asynchronous, it doesn't return an error if you submit duplicate access requests in quick succession or submit an access request for access that is already in progress, approved, or rejected.  It's best practice to check for any existing access requests that reference the same access items before submitting a new access request. This can be accomplished by using the [List Access Request Status](https://developer.sailpoint.com/idn/api/v3/list-access-request-status) or the [Pending Access Request Approvals](https://developer.sailpoint.com/idn/api/v3/list-pending-approvals) APIs. You can also use the [Search API](https://developer.sailpoint.com/idn/api/v3/search) to check the existing access items an identity has before submitting an access request to ensure that you aren't requesting access that is already granted. If you use this API to request access that an identity already has, the API will ignore the request.  These ignored requests do not display when you use the [List Access Request Status](https://developer.sailpoint.com/idn/api/v3/list-access-request-status) API.  There are two types of access request:  __GRANT_ACCESS__ * Can be requested for multiple identities in a single request. * Supports self request and request on behalf of other users. Refer to the [Get Access Request Configuration](https://developer.sailpoint.com/idn/api/v3/get-access-request-config) endpoint for request configuration options.   * Allows any authenticated token (except API) to call this endpoint to request to grant access to themselves. Depending on the configuration, a user can request access for others. * Roles, access profiles and entitlements can be requested. * While requesting entitlements, maximum of 25 entitlements and 10 recipients are allowed in a request.   __REVOKE_ACCESS__ * Can only be requested for a single identity at a time. * You cannot use an access request to revoke access from an identity if that access has been granted by role membership or by birthright provisioning.  * Does not support self request. Only manager can request to revoke access for their directly managed employees. * If a `removeDate` is specified, then the access will be removed on that date and time only for roles, access profiles and entitlements. * Roles, access profiles, and entitlements can be requested for revocation. * Revoke requests for entitlements are limited to 1 entitlement per access request currently. * You can specify a `removeDate` if the access doesn't already have a sunset date. The `removeDate` must be a future date, in the UTC timezone.  * Allows a manager to request to revoke access for direct employees. A token with ORG_ADMIN authority can also request to revoke access from anyone.  A token with API authority cannot be used to call this endpoint.  

.PARAMETER AccessRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SystemCollectionsHashtable
#>
function New-BetaAccessRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${AccessRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-BetaAccessRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/access-requests'

        if (!$AccessRequest) {
            throw "Error! The required parameter `AccessRequest` missing when calling createAccessRequest."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($AccessRequest -is [array])) {
            $LocalVarBodyParameter = $AccessRequest | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $AccessRequest | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SystemCollectionsHashtable" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Get Access Request Configuration

.DESCRIPTION

This endpoint returns the current access-request configuration.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

AccessRequestConfig
#>
function Get-BetaAccessRequestConfig {
    [CmdletBinding()]
    Param (
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-BetaAccessRequestConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/access-request-config'



        $LocalVarResult = Invoke-BetaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "AccessRequestConfig" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Access Request Status

.DESCRIPTION

Use this API to return a list of access request statuses based on the specified query parameters. If an access request was made for access that an identity already has, the API ignores the access request.  These ignored requests do not display in the list of access request statuses. Any token with any authority can request their own status. A token with ORG_ADMIN authority is required to call this API to get a list of statuses for other users.

.PARAMETER RequestedFor
Filter the results by the identity the requests were made for. *me* indicates the current user. Mutually exclusive with *regarding-identity*.

.PARAMETER RequestedBy
Filter the results by the identity twho made the requests. *me* indicates the current user. Mutually exclusive with *regarding-identity*.

.PARAMETER RegardingIdentity
Filter the results by the specified identity who is either the requester or target of the requests. *me* indicates the current user. Mutually exclusive with *requested-for* and *requested-by*.

.PARAMETER AssignedTo
Filter the results by the specified identity who is the owner of the Identity Request Work Item. *me* indicates the current user.

.PARAMETER Count
If this is true, the *X-Total-Count* response header populates with the number of results that would be returned if limit and offset were ignored.

.PARAMETER Limit
Max number of results to return.

.PARAMETER Offset
Offset into the full result set. Usually specified with *limit* to paginate through the results. Defaults to 0 if not specified.

.PARAMETER Filters
Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **accountActivityItemId**: *eq, in, ge, gt, le, lt, ne, isnull, sw*

.PARAMETER Sorters
Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **created, modified, accountActivityItemId, name**

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

RequestedItemStatus[]
#>
function Get-BetaAccessRequestStatus {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${RequestedFor},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${RequestedBy},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${RegardingIdentity},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${AssignedTo},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Count},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filters},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Sorters},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-BetaAccessRequestStatus' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        $LocalVarUri = '/access-request-status'

        if ($RequestedFor) {
            $LocalVarQueryParameters['requested-for'] = $RequestedFor
        }

        if ($RequestedBy) {
            $LocalVarQueryParameters['requested-by'] = $RequestedBy
        }

        if ($RegardingIdentity) {
            $LocalVarQueryParameters['regarding-identity'] = $RegardingIdentity
        }

        if ($AssignedTo) {
            $LocalVarQueryParameters['assigned-to'] = $AssignedTo
        }

        if ($Count) {
            $LocalVarQueryParameters['count'] = $Count
        }

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($Filters) {
            $LocalVarQueryParameters['filters'] = $Filters
        }

        if ($Sorters) {
            $LocalVarQueryParameters['sorters'] = $Sorters
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "RequestedItemStatus[]" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

<#
.SYNOPSIS

Update Access Request Configuration

.DESCRIPTION

This endpoint replaces the current access-request configuration. A token with ORG_ADMIN authority is required to call this API.

.PARAMETER AccessRequestConfig
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

AccessRequestConfig
#>
function Set-BetaAccessRequestConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${AccessRequestConfig},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Set-BetaAccessRequestConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $LocalVarAccepts = @()
        $LocalVarContentTypes = @()
        $LocalVarQueryParameters = @{}
        $LocalVarHeaderParameters = @{}
        $LocalVarFormParameters = @{}
        $LocalVarPathParameters = @{}
        $LocalVarCookieParameters = @{}
        $LocalVarBodyParameter = $null

        # HTTP header 'Accept' (if needed)
        $LocalVarAccepts = @('application/json')

        # HTTP header 'Content-Type'
        $LocalVarContentTypes = @('application/json')

        $LocalVarUri = '/access-request-config'

        if (!$AccessRequestConfig) {
            throw "Error! The required parameter `AccessRequestConfig` missing when calling setAccessRequestConfig."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($AccessRequestConfig -is [array])) {
            $LocalVarBodyParameter = $AccessRequestConfig | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $AccessRequestConfig | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-BetaApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "AccessRequestConfig" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}
