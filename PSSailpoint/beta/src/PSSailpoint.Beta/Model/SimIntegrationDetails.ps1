#
# Identity Security Cloud Beta API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Name
Name of the Object
.PARAMETER Description
The description of the integration
.PARAMETER Type
The integration type
.PARAMETER Attributes
The attributes map containing the credentials used to configure the integration.
.PARAMETER Sources
The list of sources (managed resources)
.PARAMETER Cluster
The cluster/proxy
.PARAMETER StatusMap
Custom mapping between the integration result and the provisioning result
.PARAMETER Request
Request data to customize desc and body of the created ticket
.PARAMETER BeforeProvisioningRule
No description available.
.OUTPUTS

SimIntegrationDetails<PSCustomObject>
#>

function Initialize-BetaSimIntegrationDetails {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String[]]
        ${Sources},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Cluster},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${StatusMap},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Request},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${BeforeProvisioningRule}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaSimIntegrationDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "type" = ${Type}
            "attributes" = ${Attributes}
            "sources" = ${Sources}
            "cluster" = ${Cluster}
            "statusMap" = ${StatusMap}
            "request" = ${Request}
            "beforeProvisioningRule" = ${BeforeProvisioningRule}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SimIntegrationDetails<PSCustomObject>

.DESCRIPTION

Convert from JSON to SimIntegrationDetails<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SimIntegrationDetails<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSimIntegrationDetails {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaSimIntegrationDetails' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSimIntegrationDetails
        $AllProperties = ("id", "name", "created", "modified", "description", "type", "attributes", "sources", "cluster", "statusMap", "request", "beforeProvisioningRule")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'name' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sources"))) { #optional property not found
            $Sources = $null
        } else {
            $Sources = $JsonParameters.PSobject.Properties["sources"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "cluster"))) { #optional property not found
            $Cluster = $null
        } else {
            $Cluster = $JsonParameters.PSobject.Properties["cluster"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusMap"))) { #optional property not found
            $StatusMap = $null
        } else {
            $StatusMap = $JsonParameters.PSobject.Properties["statusMap"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "request"))) { #optional property not found
            $Request = $null
        } else {
            $Request = $JsonParameters.PSobject.Properties["request"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "beforeProvisioningRule"))) { #optional property not found
            $BeforeProvisioningRule = $null
        } else {
            $BeforeProvisioningRule = $JsonParameters.PSobject.Properties["beforeProvisioningRule"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "type" = ${Type}
            "attributes" = ${Attributes}
            "sources" = ${Sources}
            "cluster" = ${Cluster}
            "statusMap" = ${StatusMap}
            "request" = ${Request}
            "beforeProvisioningRule" = ${BeforeProvisioningRule}
        }

        return $PSO
    }

}
