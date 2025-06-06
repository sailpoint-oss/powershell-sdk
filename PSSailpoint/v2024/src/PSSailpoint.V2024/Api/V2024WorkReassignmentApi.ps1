#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create a reassignment configuration

.DESCRIPTION

Creates a new Reassignment Configuration for the specified identity.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER ConfigurationItemRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ConfigurationItemResponse
#>
function New-V2024ReassignmentConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ConfigurationItemRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-V2024ReassignmentConfiguration' | Write-Debug
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

        $LocalVarUri = '/reassignment-configurations'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling createReassignmentConfiguration."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if (!$ConfigurationItemRequest) {
            throw "Error! The required parameter `ConfigurationItemRequest` missing when calling createReassignmentConfiguration."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($ConfigurationItemRequest -is [array])) {
            $LocalVarBodyParameter = $ConfigurationItemRequest | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $ConfigurationItemRequest | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-V2024ApiClient -Method 'POST' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "ConfigurationItemResponse" `
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

Delete reassignment configuration

.DESCRIPTION

Deletes a single reassignment configuration for the specified identity

.PARAMETER IdentityId
unique identity id

.PARAMETER ConfigType
No description available.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Remove-V2024ReassignmentConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IdentityId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ConfigType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Remove-V2024ReassignmentConfiguration' | Write-Debug
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

        $LocalVarUri = '/reassignment-configurations/{identityId}/{configType}'
        if (!$IdentityId) {
            throw "Error! The required parameter `IdentityId` missing when calling deleteReassignmentConfiguration."
        }
        $LocalVarUri = $LocalVarUri.replace('{identityId}', [System.Web.HTTPUtility]::UrlEncode($IdentityId))
        if (!$ConfigType) {
            throw "Error! The required parameter `ConfigType` missing when calling deleteReassignmentConfiguration."
        }
        $LocalVarUri = $LocalVarUri.replace('{configType}', [System.Web.HTTPUtility]::UrlEncode($ConfigType))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling deleteReassignmentConfiguration."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental



        $LocalVarResult = Invoke-V2024ApiClient -Method 'DELETE' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "" `
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

Evaluate reassignment configuration

.DESCRIPTION

Evaluates the Reassignment Configuration for an `Identity` to determine if work items for the specified type should be reassigned. If a valid Reassignment Configuration is found for the identity & work type, then a lookup is initiated which recursively fetches the Reassignment Configuration for the next `TargetIdentity` until no more results are found or a max depth of 5. That lookup trail is provided in the response and the final reassigned identity in the lookup list is returned as the `reassignToId` property. If no Reassignment Configuration is found for the specified identity & config type then the requested Identity ID will be used as the `reassignToId` value and the lookupTrail node will be empty.

.PARAMETER IdentityId
unique identity id

.PARAMETER ConfigType
Reassignment work type

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER ExclusionFilters
Exclusion filters that disable parts of the reassignment evaluation. Possible values are listed below: - `SELF_REVIEW_DELEGATION`: This will exclude delegations of self-review reassignments

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

EvaluateResponse[]
#>
function Get-V2024EvaluateReassignmentConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IdentityId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ConfigType},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String[]]
        ${ExclusionFilters},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2024EvaluateReassignmentConfiguration' | Write-Debug
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

        $LocalVarUri = '/reassignment-configurations/{identityId}/evaluate/{configType}'
        if (!$IdentityId) {
            throw "Error! The required parameter `IdentityId` missing when calling getEvaluateReassignmentConfiguration."
        }
        $LocalVarUri = $LocalVarUri.replace('{identityId}', [System.Web.HTTPUtility]::UrlEncode($IdentityId))
        if (!$ConfigType) {
            throw "Error! The required parameter `ConfigType` missing when calling getEvaluateReassignmentConfiguration."
        }
        $LocalVarUri = $LocalVarUri.replace('{configType}', [System.Web.HTTPUtility]::UrlEncode($ConfigType))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getEvaluateReassignmentConfiguration."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if ($ExclusionFilters) {
            $LocalVarQueryParameters['exclusionFilters'] = $ExclusionFilters
        }



        $LocalVarResult = Invoke-V2024ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "EvaluateResponse[]" `
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

List reassignment config types

.DESCRIPTION

Gets a collection of types which are available in the Reassignment Configuration UI.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ConfigType[]
#>
function Get-V2024ReassignmentConfigTypes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2024ReassignmentConfigTypes' | Write-Debug
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

        $LocalVarUri = '/reassignment-configurations/types'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getReassignmentConfigTypes."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental



        $LocalVarResult = Invoke-V2024ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "ConfigType[]" `
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

Get reassignment configuration

.DESCRIPTION

Gets the Reassignment Configuration for an identity.

.PARAMETER IdentityId
unique identity id

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ConfigurationResponse
#>
function Get-V2024ReassignmentConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IdentityId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2024ReassignmentConfiguration' | Write-Debug
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

        $LocalVarUri = '/reassignment-configurations/{identityId}'
        if (!$IdentityId) {
            throw "Error! The required parameter `IdentityId` missing when calling getReassignmentConfiguration."
        }
        $LocalVarUri = $LocalVarUri.replace('{identityId}', [System.Web.HTTPUtility]::UrlEncode($IdentityId))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getReassignmentConfiguration."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental



        $LocalVarResult = Invoke-V2024ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "ConfigurationResponse" `
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

Get tenant-wide reassignment configuration settings

.DESCRIPTION

Gets the global Reassignment Configuration settings for the requestor's tenant.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

TenantConfigurationResponse
#>
function Get-V2024TenantConfigConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2024TenantConfigConfiguration' | Write-Debug
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

        $LocalVarUri = '/reassignment-configurations/tenant-config'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getTenantConfigConfiguration."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental



        $LocalVarResult = Invoke-V2024ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "TenantConfigurationResponse" `
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

List reassignment configurations

.DESCRIPTION

Gets all Reassignment configuration for the current org.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ConfigurationResponse[]
#>
function Get-V2024ReassignmentConfigurations {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2024ReassignmentConfigurations' | Write-Debug
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

        $LocalVarUri = '/reassignment-configurations'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling listReassignmentConfigurations."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental



        $LocalVarResult = Invoke-V2024ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "ConfigurationResponse[]" `
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

Update reassignment configuration

.DESCRIPTION

Replaces existing Reassignment configuration for an identity with the newly provided configuration.

.PARAMETER IdentityId
unique identity id

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER ConfigurationItemRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

ConfigurationItemResponse
#>
function Send-V2024ReassignmentConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${IdentityId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${ConfigurationItemRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Send-V2024ReassignmentConfig' | Write-Debug
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

        $LocalVarUri = '/reassignment-configurations/{identityId}'
        if (!$IdentityId) {
            throw "Error! The required parameter `IdentityId` missing when calling putReassignmentConfig."
        }
        $LocalVarUri = $LocalVarUri.replace('{identityId}', [System.Web.HTTPUtility]::UrlEncode($IdentityId))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling putReassignmentConfig."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if (!$ConfigurationItemRequest) {
            throw "Error! The required parameter `ConfigurationItemRequest` missing when calling putReassignmentConfig."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($ConfigurationItemRequest -is [array])) {
            $LocalVarBodyParameter = $ConfigurationItemRequest | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $ConfigurationItemRequest | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-V2024ApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "ConfigurationItemResponse" `
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

Update tenant-wide reassignment configuration settings

.DESCRIPTION

Replaces existing Tenant-wide Reassignment Configuration settings with the newly provided settings.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER TenantConfigurationRequest
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

TenantConfigurationResponse
#>
function Send-V2024TenantConfiguration {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${TenantConfigurationRequest},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Send-V2024TenantConfiguration' | Write-Debug
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

        $LocalVarUri = '/reassignment-configurations/tenant-config'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling putTenantConfiguration."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if (!$TenantConfigurationRequest) {
            throw "Error! The required parameter `TenantConfigurationRequest` missing when calling putTenantConfiguration."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($TenantConfigurationRequest -is [array])) {
            $LocalVarBodyParameter = $TenantConfigurationRequest | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $TenantConfigurationRequest | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-V2024ApiClient -Method 'PUT' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "TenantConfigurationResponse" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

