#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Details about a public identity

.PARAMETER Id
Identity id
.PARAMETER Name
Human-readable display name of identity.
.PARAMETER Alias
Alternate unique identifier for the identity.
.PARAMETER Email
Email address of identity.
.PARAMETER Status
The lifecycle status for the identity
.PARAMETER Manager
No description available.
.PARAMETER Attributes
The public identity attributes of the identity
.OUTPUTS

PublicIdentity<PSCustomObject>
#>

function Initialize-PublicIdentity {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Alias},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(Position = 5, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Manager},
        [Parameter(Position = 6, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Attributes}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => PublicIdentity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "alias" = ${Alias}
            "email" = ${Email}
            "status" = ${Status}
            "manager" = ${Manager}
            "attributes" = ${Attributes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to PublicIdentity<PSCustomObject>

.DESCRIPTION

Convert from JSON to PublicIdentity<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

PublicIdentity<PSCustomObject>
#>
function ConvertFrom-JsonToPublicIdentity {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => PublicIdentity' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in PublicIdentity
        $AllProperties = ("id", "name", "alias", "email", "status", "manager", "attributes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "alias"))) { #optional property not found
            $Alias = $null
        } else {
            $Alias = $JsonParameters.PSobject.Properties["alias"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manager"))) { #optional property not found
            $Manager = $null
        } else {
            $Manager = $JsonParameters.PSobject.Properties["manager"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "alias" = ${Alias}
            "email" = ${Email}
            "status" = ${Status}
            "manager" = ${Manager}
            "attributes" = ${Attributes}
        }

        return $PSO
    }

}

