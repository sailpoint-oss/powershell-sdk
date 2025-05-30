#
# Identity Security Cloud V2025 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2025
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Generate insights for roles

.DESCRIPTION

Submits a create role insights request to the role insights application. At this time there are no parameters. All business roles will be processed for the customer.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

RoleInsightsResponse
#>
function New-V2025RoleInsightRequests {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-V2025RoleInsightRequests' | Write-Debug
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

        $LocalVarUri = '/role-insights/requests'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling createRoleInsightRequests."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental



        $LocalVarResult = Invoke-V2025ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "RoleInsightsResponse" `
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

Download entitlement insights for a role

.DESCRIPTION

This endpoint returns the entitlement insights for a role.

.PARAMETER InsightId
The role insight id

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER Sorters
Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **identitiesWithAccess**  The default sort is **identitiesWithAccess** in descending order.

.PARAMETER Filters
Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw*  **description**: *sw*

.PARAMETER ReturnType

Select the return type (optional): text/csv, application/json

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

String
#>
function Invoke-V2025DownloadRoleInsightsEntitlementsChanges {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${InsightId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Sorters},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filters},
        [String]
        [ValidateSet("text/csv", "application/json")]
        $ReturnType,
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Invoke-V2025DownloadRoleInsightsEntitlementsChanges' | Write-Debug
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
        $LocalVarAccepts = @('text/csv', 'application/json')

        if ($ReturnType) {
            # use the return type (MIME) provided by the user
            $LocalVarAccepts = @($ReturnType)
        }

        $LocalVarUri = '/role-insights/{insightId}/entitlement-changes/download'
        if (!$InsightId) {
            throw "Error! The required parameter `InsightId` missing when calling downloadRoleInsightsEntitlementsChanges."
        }
        $LocalVarUri = $LocalVarUri.replace('{insightId}', [System.Web.HTTPUtility]::UrlEncode($InsightId))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling downloadRoleInsightsEntitlementsChanges."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if ($Sorters) {
            $LocalVarQueryParameters['sorters'] = $Sorters
        }

        if ($Filters) {
            $LocalVarQueryParameters['filters'] = $Filters
        }



        $LocalVarResult = Invoke-V2025ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "String" `
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

Get identities for a suggested entitlement (for a role)

.DESCRIPTION

Role insights suggests entitlements to be added for a role. This endpoint returns a list of identities in the role, with or without the entitlements, for a suggested entitlement so that the user can see which identities would be affected if the suggested entitlement were to be added to the role.

.PARAMETER InsightId
The role insight id

.PARAMETER EntitlementId
The entitlement id

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER HasEntitlement
Identity has this entitlement or not

.PARAMETER Offset
Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Limit
Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Count
If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Sorters
Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **name**

.PARAMETER Filters
Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw*

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

RoleInsightsIdentities[]
#>
function Get-V2025EntitlementChangesIdentities {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${InsightId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${EntitlementId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${HasEntitlement},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Count},
        [Parameter(Position = 7, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Sorters},
        [Parameter(Position = 8, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filters},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2025EntitlementChangesIdentities' | Write-Debug
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

        $LocalVarUri = '/role-insights/{insightId}/entitlement-changes/{entitlementId}/identities'
        if (!$InsightId) {
            throw "Error! The required parameter `InsightId` missing when calling getEntitlementChangesIdentities."
        }
        $LocalVarUri = $LocalVarUri.replace('{insightId}', [System.Web.HTTPUtility]::UrlEncode($InsightId))
        if (!$EntitlementId) {
            throw "Error! The required parameter `EntitlementId` missing when calling getEntitlementChangesIdentities."
        }
        $LocalVarUri = $LocalVarUri.replace('{entitlementId}', [System.Web.HTTPUtility]::UrlEncode($EntitlementId))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getEntitlementChangesIdentities."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if ($HasEntitlement) {
            $LocalVarQueryParameters['hasEntitlement'] = $HasEntitlement
        }

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Count) {
            $LocalVarQueryParameters['count'] = $Count
        }

        if ($Sorters) {
            $LocalVarQueryParameters['sorters'] = $Sorters
        }

        if ($Filters) {
            $LocalVarQueryParameters['filters'] = $Filters
        }



        $LocalVarResult = Invoke-V2025ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "RoleInsightsIdentities[]" `
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

Get a single role insight

.DESCRIPTION

This endpoint gets role insights information for a role.

.PARAMETER InsightId
The role insight id

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

RoleInsight
#>
function Get-V2025RoleInsight {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${InsightId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2025RoleInsight' | Write-Debug
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

        $LocalVarUri = '/role-insights/{insightId}'
        if (!$InsightId) {
            throw "Error! The required parameter `InsightId` missing when calling getRoleInsight."
        }
        $LocalVarUri = $LocalVarUri.replace('{insightId}', [System.Web.HTTPUtility]::UrlEncode($InsightId))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getRoleInsight."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental



        $LocalVarResult = Invoke-V2025ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "RoleInsight" `
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

Get role insights

.DESCRIPTION

This method returns detailed role insights for each role.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER Offset
Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Limit
Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Count
If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Sorters
Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **numberOfUpdates, identitiesWithAccess, totalNumberOfIdentities**

.PARAMETER Filters
Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw*  **ownerName**: *sw*  **description**: *sw*

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

RoleInsight[]
#>
function Get-V2025RoleInsights {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Count},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Sorters},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filters},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2025RoleInsights' | Write-Debug
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

        $LocalVarUri = '/role-insights'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getRoleInsights."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Count) {
            $LocalVarQueryParameters['count'] = $Count
        }

        if ($Sorters) {
            $LocalVarQueryParameters['sorters'] = $Sorters
        }

        if ($Filters) {
            $LocalVarQueryParameters['filters'] = $Filters
        }



        $LocalVarResult = Invoke-V2025ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "RoleInsight[]" `
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

Get current entitlement for a role

.DESCRIPTION

This endpoint gets the entitlements for a role. The term ""current"" is to distinguish from the entitlement(s) an insight might recommend adding.

.PARAMETER InsightId
The role insight id

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER Filters
Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw*  **description**: *sw*

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

RoleInsightsEntitlement[]
#>
function Get-V2025RoleInsightsCurrentEntitlements {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${InsightId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filters},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2025RoleInsightsCurrentEntitlements' | Write-Debug
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

        $LocalVarUri = '/role-insights/{insightId}/current-entitlements'
        if (!$InsightId) {
            throw "Error! The required parameter `InsightId` missing when calling getRoleInsightsCurrentEntitlements."
        }
        $LocalVarUri = $LocalVarUri.replace('{insightId}', [System.Web.HTTPUtility]::UrlEncode($InsightId))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getRoleInsightsCurrentEntitlements."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if ($Filters) {
            $LocalVarQueryParameters['filters'] = $Filters
        }



        $LocalVarResult = Invoke-V2025ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "RoleInsightsEntitlement[]" `
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

Get entitlement insights for a role

.DESCRIPTION

This endpoint returns entitlement insights for a role.

.PARAMETER InsightId
The role insight id

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER Sorters
Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **identitiesWithAccess, name**

.PARAMETER Filters
Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **name**: *sw*  **description**: *sw*

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

RoleInsightsEntitlementChanges[]
#>
function Get-V2025RoleInsightsEntitlementsChanges {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${InsightId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Sorters},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filters},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2025RoleInsightsEntitlementsChanges' | Write-Debug
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

        $LocalVarUri = '/role-insights/{insightId}/entitlement-changes'
        if (!$InsightId) {
            throw "Error! The required parameter `InsightId` missing when calling getRoleInsightsEntitlementsChanges."
        }
        $LocalVarUri = $LocalVarUri.replace('{insightId}', [System.Web.HTTPUtility]::UrlEncode($InsightId))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getRoleInsightsEntitlementsChanges."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if ($Sorters) {
            $LocalVarQueryParameters['sorters'] = $Sorters
        }

        if ($Filters) {
            $LocalVarQueryParameters['filters'] = $Filters
        }



        $LocalVarResult = Invoke-V2025ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "RoleInsightsEntitlementChanges[]" `
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

Returns metadata from prior request.

.DESCRIPTION

This endpoint returns details of a prior role insights request. 

.PARAMETER Id
The role insights request id

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

RoleInsightsResponse
#>
function Get-V2025RoleInsightsRequests {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2025RoleInsightsRequests' | Write-Debug
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

        $LocalVarUri = '/role-insights/requests/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling getRoleInsightsRequests."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getRoleInsightsRequests."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental



        $LocalVarResult = Invoke-V2025ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "RoleInsightsResponse" `
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

Get role insights summary information

.DESCRIPTION

This method returns high level summary information for role insights for a customer.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

RoleInsightsSummary
#>
function Get-V2025RoleInsightsSummary {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2025RoleInsightsSummary' | Write-Debug
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

        $LocalVarUri = '/role-insights/summary'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getRoleInsightsSummary."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental



        $LocalVarResult = Invoke-V2025ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "RoleInsightsSummary" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

