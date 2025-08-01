#
# Identity Security Cloud V2025 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2025
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

Create subtype

.DESCRIPTION

Create a new machine account subtype for a source.

.PARAMETER SourceId
The ID of the source.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER SourceSubtype
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SourceSubtype
#>
function New-V2025MachineAccountSubtype {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SourceId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${SourceSubtype},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: New-V2025MachineAccountSubtype' | Write-Debug
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

        $LocalVarUri = '/sources/{sourceId}/subtypes'
        if (!$SourceId) {
            throw "Error! The required parameter `SourceId` missing when calling createMachineAccountSubtype."
        }
        $LocalVarUri = $LocalVarUri.replace('{sourceId}', [System.Web.HTTPUtility]::UrlEncode($SourceId))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling createMachineAccountSubtype."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if (!$SourceSubtype) {
            throw "Error! The required parameter `SourceSubtype` missing when calling createMachineAccountSubtype."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($SourceSubtype -is [array])) {
            $LocalVarBodyParameter = $SourceSubtype | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $SourceSubtype | ForEach-Object {
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
                                -ReturnType "SourceSubtype" `
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

Delete subtype

.DESCRIPTION

Delete a machine account subtype by its ID.

.PARAMETER SubtypeId
The ID of the machine account subtype.

.PARAMETER TechnicalName
The technical name of the subtype.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

None
#>
function Remove-V2025MachineAccountSubtype {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SubtypeId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TechnicalName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Remove-V2025MachineAccountSubtype' | Write-Debug
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

        $LocalVarUri = '/sources/{sourceId}/subtypes/{technicalName}'
        if (!$SubtypeId) {
            throw "Error! The required parameter `SubtypeId` missing when calling deleteMachineAccountSubtype."
        }
        $LocalVarUri = $LocalVarUri.replace('{subtypeId}', [System.Web.HTTPUtility]::UrlEncode($SubtypeId))
        if (!$TechnicalName) {
            throw "Error! The required parameter `TechnicalName` missing when calling deleteMachineAccountSubtype."
        }
        $LocalVarUri = $LocalVarUri.replace('{technicalName}', [System.Web.HTTPUtility]::UrlEncode($TechnicalName))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling deleteMachineAccountSubtype."
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

Machine account details

.DESCRIPTION

Use this API to return the details for a single machine account by its ID.  

.PARAMETER Id
Machine Account ID.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

MachineAccount
#>
function Get-V2025MachineAccount {
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
        'Calling method: Get-V2025MachineAccount' | Write-Debug
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

        $LocalVarUri = '/machine-accounts/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling getMachineAccount."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getMachineAccount."
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
                                -ReturnType "MachineAccount" `
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

Retrieve subtype by subtype id

.DESCRIPTION

Get a machine account subtype by its unique ID.

.PARAMETER SubtypeId
The ID of the machine account subtype.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SourceSubtype
#>
function Get-V2025MachineAccountSubtypeById {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SubtypeId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2025MachineAccountSubtypeById' | Write-Debug
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

        $LocalVarUri = '/sources/subtype/{subtypeId}'
        if (!$SubtypeId) {
            throw "Error! The required parameter `SubtypeId` missing when calling getMachineAccountSubtypeById."
        }
        $LocalVarUri = $LocalVarUri.replace('{subtypeId}', [System.Web.HTTPUtility]::UrlEncode($SubtypeId))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getMachineAccountSubtypeById."
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
                                -ReturnType "SourceSubtype" `
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

Retrieve subtype by source and technicalName

.DESCRIPTION

Get a machine account subtype by source ID and technical name.

.PARAMETER SourceId
The ID of the source.

.PARAMETER TechnicalName
The technical name of the subtype.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SourceSubtype
#>
function Get-V2025MachineAccountSubtypeByTechnicalName {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SourceId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TechnicalName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2025MachineAccountSubtypeByTechnicalName' | Write-Debug
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

        $LocalVarUri = '/sources/{sourceId}/subtypes/{technicalName}'
        if (!$SourceId) {
            throw "Error! The required parameter `SourceId` missing when calling getMachineAccountSubtypeByTechnicalName."
        }
        $LocalVarUri = $LocalVarUri.replace('{sourceId}', [System.Web.HTTPUtility]::UrlEncode($SourceId))
        if (!$TechnicalName) {
            throw "Error! The required parameter `TechnicalName` missing when calling getMachineAccountSubtypeByTechnicalName."
        }
        $LocalVarUri = $LocalVarUri.replace('{technicalName}', [System.Web.HTTPUtility]::UrlEncode($TechnicalName))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling getMachineAccountSubtypeByTechnicalName."
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
                                -ReturnType "SourceSubtype" `
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

Retrieve all subtypes by source

.DESCRIPTION

Get all machine account subtypes for a given source.

.PARAMETER SourceId
The ID of the source.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER Filters
Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **displayName**: *eq, sw*  **technicalName**: *eq, sw*

.PARAMETER Sorters
Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **displayName, technicalName**

.PARAMETER Count
If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Limit
Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Offset
Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SourceSubtype[]
#>
function Get-V2025MachineAccountSubtypes {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SourceId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filters},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Sorters},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Count},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Limit},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Int32]]
        ${Offset},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2025MachineAccountSubtypes' | Write-Debug
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

        $LocalVarUri = '/sources/{sourceId}/subtypes'
        if (!$SourceId) {
            throw "Error! The required parameter `SourceId` missing when calling listMachineAccountSubtypes."
        }
        $LocalVarUri = $LocalVarUri.replace('{sourceId}', [System.Web.HTTPUtility]::UrlEncode($SourceId))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling listMachineAccountSubtypes."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if ($Filters) {
            $LocalVarQueryParameters['filters'] = $Filters
        }

        if ($Sorters) {
            $LocalVarQueryParameters['sorters'] = $Sorters
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



        $LocalVarResult = Invoke-V2025ApiClient -Method 'GET' `
                                -Uri $LocalVarUri `
                                -Accepts $LocalVarAccepts `
                                -ContentTypes $LocalVarContentTypes `
                                -Body $LocalVarBodyParameter `
                                -HeaderParameters $LocalVarHeaderParameters `
                                -QueryParameters $LocalVarQueryParameters `
                                -FormParameters $LocalVarFormParameters `
                                -CookieParameters $LocalVarCookieParameters `
                                -ReturnType "SourceSubtype[]" `
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

Machine accounts list

.DESCRIPTION

This returns a list of machine accounts.  

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER Limit
Max number of results to return. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Offset
Offset into the full result set. Usually specified with *limit* to paginate through the results. See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Count
If *true* it will populate the *X-Total-Count* response header with the number of results that would be returned if *limit* and *offset* were ignored.  Since requesting a total count can have a performance impact, it is recommended not to send **count=true** if that value will not be used.  See [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters) for more information.

.PARAMETER Filters
Filter results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#filtering-results)  Filtering is supported for the following fields and operators:  **id**: *eq, in, sw*  **name**: *eq, in, sw*  **nativeIdentity**: *eq, in, sw*  **machineIdentity**: *eq, in, sw*  **description**: *eq, in, sw*  **ownerIdentity**: *eq, in, sw*  **ownerIdentityId**: *eq, in, sw*  **entitlements**: *eq*  **accessType**: *eq, in, sw*  **subType**: *eq, in, sw*  **environment**: *eq, in, sw*  **classificationMethod**: *eq, in, sw*  **manuallyCorrelated**: *eq*  **manuallyEdited**: *eq*  **identity**: *eq, in, sw*  **source**: *eq, in*  **hasEntitlement**: *eq*  **locked**: *eq*  **connectorAttributes**: *eq*

.PARAMETER Sorters
Sort results using the standard syntax described in [V3 API Standard Collection Parameters](https://developer.sailpoint.com/idn/api/standard-collection-parameters#sorting-results)  Sorting is supported for the following fields: **id, name, created, modified, machineIdentity, identity.id, nativeIdentity, uuid, manuallyCorrelated, connectorAttributes, entitlements, identity.name, identity.type, source.id, source.name, source.type**

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

MachineAccount[]
#>
function Get-V2025MachineAccounts {
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
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [System.Nullable[Boolean]]
        ${Count},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Filters},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Sorters},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Get-V2025MachineAccounts' | Write-Debug
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

        $LocalVarUri = '/machine-accounts'

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling listMachineAccounts."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if ($Limit) {
            $LocalVarQueryParameters['limit'] = $Limit
        }

        if ($Offset) {
            $LocalVarQueryParameters['offset'] = $Offset
        }

        if ($Count) {
            $LocalVarQueryParameters['count'] = $Count
        }

        if ($Filters) {
            $LocalVarQueryParameters['filters'] = $Filters
        }

        if ($Sorters) {
            $LocalVarQueryParameters['sorters'] = $Sorters
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
                                -ReturnType "MachineAccount[]" `
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

Patch subtype

.DESCRIPTION

Update fields of a machine account subtype by its ID. Patchable fields include: `displayName`, `description`, `technicalName`.

.PARAMETER SubtypeId
The ID of the machine account subtype.

.PARAMETER TechnicalName
The technical name of the subtype.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER SourceSubtype
No description available.

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

SourceSubtype
#>
function Update-V2025MachineAccountSubtype {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${SubtypeId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${TechnicalName},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject]
        ${SourceSubtype},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-V2025MachineAccountSubtype' | Write-Debug
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

        $LocalVarUri = '/sources/{sourceId}/subtypes/{technicalName}'
        if (!$SubtypeId) {
            throw "Error! The required parameter `SubtypeId` missing when calling patchMachineAccountSubtype."
        }
        $LocalVarUri = $LocalVarUri.replace('{subtypeId}', [System.Web.HTTPUtility]::UrlEncode($SubtypeId))
        if (!$TechnicalName) {
            throw "Error! The required parameter `TechnicalName` missing when calling patchMachineAccountSubtype."
        }
        $LocalVarUri = $LocalVarUri.replace('{technicalName}', [System.Web.HTTPUtility]::UrlEncode($TechnicalName))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling patchMachineAccountSubtype."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if (!$SourceSubtype) {
            throw "Error! The required parameter `SourceSubtype` missing when calling patchMachineAccountSubtype."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($SourceSubtype -is [array])) {
            $LocalVarBodyParameter = $SourceSubtype | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $SourceSubtype | ForEach-Object {
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
                                -ReturnType "SourceSubtype" `
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

Update a machine account

.DESCRIPTION

Use this API to update machine accounts details.  

.PARAMETER Id
Machine Account ID.

.PARAMETER XSailPointExperimental
Use this header to enable this experimental API.

.PARAMETER RequestBody
A JSON of updated values [JSON Patch](https://tools.ietf.org/html/rfc6902) standard. The following fields are patchable:           * description           * ownerIdentity           * subType           * accessType           * environment           * attributes           * classificationMethod           * manuallyEdited           * nativeIdentity           * uuid           * source           * manuallyCorrelated           * enabled           * locked           * hasEntitlements           * connectorAttributes

.PARAMETER WithHttpInfo

A switch when turned on will return a hash table of Response, StatusCode and Headers instead of just the Response

.OUTPUTS

MachineAccount
#>
function Update-V2025MachineAccount {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [String]
        $XSailPointExperimental = "true",
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true, Mandatory = $false)]
        [PSCustomObject[]]
        ${RequestBody},
        [Switch]
        $WithHttpInfo
    )

    Process {
        'Calling method: Update-V2025MachineAccount' | Write-Debug
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

        $LocalVarUri = '/machine-accounts/{id}'
        if (!$Id) {
            throw "Error! The required parameter `Id` missing when calling updateMachineAccount."
        }
        $LocalVarUri = $LocalVarUri.replace('{id}', [System.Web.HTTPUtility]::UrlEncode($Id))

        if (!$XSailPointExperimental) {
            throw "Error! The required parameter `XSailPointExperimental` missing when calling updateMachineAccount."
        }
        $LocalVarHeaderParameters['X-SailPoint-Experimental'] = $XSailPointExperimental

        if (!$RequestBody) {
            throw "Error! The required parameter `RequestBody` missing when calling updateMachineAccount."
        }

        if ($LocalVarContentTypes.Contains('application/json-patch+json') -or ($RequestBody -is [array])) {
            $LocalVarBodyParameter = $RequestBody | ConvertTo-Json -AsArray -Depth 100
        } else {
            $LocalVarBodyParameter = $RequestBody | ForEach-Object {
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
                                -ReturnType "MachineAccount" `
                                -IsBodyNullable $false

        if ($WithHttpInfo.IsPresent) {
            return $LocalVarResult
        } else {
            return $LocalVarResult["Response"]
        }
    }
}

