#
# Identity Security Cloud V2025 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2025
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create extended search attributes

.DESCRIPTION

Create and configure extended search attributes.  This API accepts an attribute name, an attribute display name and a list of name/value pair associates of application IDs to attribute names.  It will then validate the inputs and configure/create the attribute promotion configuration in the Link ObjectConfig. >**Note: Give searchable attributes unique names.  Do not give them the same names used for account attributes or source attributes.  Also, do not give them the same names present in account schema for a current or future source, regardless of whether that source is included in the searchable attributes' `applicationAttributes`.**

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER SearchAttributeConfig
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SystemCollectionsHashtable
#>
function New-V2025SearchAttributeConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${SearchAttributeConfig},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-V2025SearchAttributeConfig' | Write-Debug
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

        $LocalVarUri = '/accounts/search-attribute-config'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling createSearchAttributeConfig."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if (!$SearchAttributeConfig) {
            throw "Error! The required parameter `SearchAttributeConfig` missing when calling createSearchAttributeConfig."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($SearchAttributeConfig -is [array])) {
            $LocalVarBodyParameter = $SearchAttributeConfig | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $SearchAttributeConfig | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-V2025ApiClient -Method 'POST' `
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

Delete extended search attribute

.DESCRIPTION

Delete an extended attribute configuration by name.

.PARAMETER Name
Name of the extended search attribute configuration to delete.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Remove-V2025SearchAttributeConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Remove-V2025SearchAttributeConfig' | Write-Debug
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

        $LocalVarUri = '/accounts/search-attribute-config/{name}'
        if (!$Name) {
            throw "Error! The required parameter `Name` missing when calling deleteSearchAttributeConfig."
        }
        $LocalVarUri = $LocalVarUri.replace('{name}', [System.Web.HTTPUtility]::UrlEncode($Name))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling deleteSearchAttributeConfig."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental



        $LocalVarResult = Invoke-V2025ApiClient -Method 'DELETE' `
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

List extended search attributes

.DESCRIPTION

Get a list of attribute/application attributes currently configured in Identity Security Cloud (ISC).

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER Limit
Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Offset
Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SearchAttributeConfig[]
#>
function Get-V2025SearchAttributeConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2025SearchAttributeConfig' | Write-Debug
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

        $LocalVarUri = '/accounts/search-attribute-config'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getSearchAttributeConfig."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
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
                                -ReturnType "SearchAttributeConfig[]" `
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

Get extended search attribute

.DESCRIPTION

Get an extended attribute configuration by name.

.PARAMETER Name
Name of the extended search attribute configuration to get.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SearchAttributeConfig
#>
function Get-V2025SingleSearchAttributeConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2025SingleSearchAttributeConfig' | Write-Debug
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

        $LocalVarUri = '/accounts/search-attribute-config/{name}'
        if (!$Name) {
            throw "Error! The required parameter `Name` missing when calling getSingleSearchAttributeConfig."
        }
        $LocalVarUri = $LocalVarUri.replace('{name}', [System.Web.HTTPUtility]::UrlEncode($Name))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getSingleSearchAttributeConfig."
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
                                -ReturnType "SearchAttributeConfig" `
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

Update extended search attribute

.DESCRIPTION

Update an existing search attribute configuration.  You can patch these fields: * name  * displayName * applicationAttributes

.PARAMETER Name
Name of the search attribute configuration to patch.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER JsonPatchOperation
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SearchAttributeConfig
#>
function Update-V2025SearchAttributeConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Name},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${JsonPatchOperation},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-V2025SearchAttributeConfig' | Write-Debug
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
        $LocalVarContentTypes = @('application/json-patch+json')

        $LocalVarUri = '/accounts/search-attribute-config/{name}'
        if (!$Name) {
            throw "Error! The required parameter `Name` missing when calling patchSearchAttributeConfig."
        }
        $LocalVarUri = $LocalVarUri.replace('{name}', [System.Web.HTTPUtility]::UrlEncode($Name))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling patchSearchAttributeConfig."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if (!$JsonPatchOperation) {
            throw "Error! The required parameter `JsonPatchOperation` missing when calling patchSearchAttributeConfig."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($JsonPatchOperation -is [array])) {
            $LocalVarBodyParameter = $JsonPatchOperation | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $JsonPatchOperation | ForEach-Object {
            # Get array of names of object properties that can be cast to boolean TRUE
            # PSObject.Properties - https://msdn.microsoft.com/en-us/library/system.management.automation.psobject.properties.aspx
            $NonEmptyProperties = $_.psobject.Properties | Where-Object {$null -ne $_.Value} | Select-Object -ExpandProperty Name
        
            # Convert object to JSON with only non-empty properties
            $_ | Select-Object -Property $NonEmptyProperties | ConvertTo-Json -Depth 100
            }
        }



        $LocalVarResult = Invoke-V2025ApiClient -Method 'PATCH' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SearchAttributeConfig" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

