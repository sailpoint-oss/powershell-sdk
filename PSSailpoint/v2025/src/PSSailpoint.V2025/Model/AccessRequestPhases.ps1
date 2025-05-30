#
# Identity Security Cloud V2025 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2025
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

Provides additional details about this access request phase.

.PARAMETER Started
The time that this phase started.
.PARAMETER Finished
The time that this phase finished.
.PARAMETER Name
The name of this phase.
.PARAMETER State
The state of this phase.
.PARAMETER Result
The state of this phase.
.PARAMETER PhaseReference
A reference to another object on the RequestedItemStatus that contains more details about the phase. Note that for the Provisioning phase, this will be empty if there are no manual work items.
.OUTPUTS

AccessRequestPhases<PSCustomObject>
#>

function Initialize-V2025AccessRequestPhases {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Started},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Finished},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PENDING", "EXECUTING", "COMPLETED", "CANCELLED", "NOT_EXECUTED")]
        [String]
        ${State},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SUCCESSFUL", "FAILED", "")]
        [String]
        ${Result},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PhaseReference}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025AccessRequestPhases' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "started" = ${Started}
            "finished" = ${Finished}
            "name" = ${Name}
            "state" = ${State}
            "result" = ${Result}
            "phaseReference" = ${PhaseReference}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to AccessRequestPhases<PSCustomObject>

.DESCRIPTION

Convert from JSON to AccessRequestPhases<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

AccessRequestPhases<PSCustomObject>
#>
function ConvertFrom-V2025JsonToAccessRequestPhases {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025AccessRequestPhases' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025AccessRequestPhases
        $AllProperties = ("started", "finished", "name", "state", "result", "phaseReference")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "started"))) { #optional property not found
            $Started = $null
        } else {
            $Started = $JsonParameters.PSobject.Properties["started"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "finished"))) { #optional property not found
            $Finished = $null
        } else {
            $Finished = $JsonParameters.PSobject.Properties["finished"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "state"))) { #optional property not found
            $State = $null
        } else {
            $State = $JsonParameters.PSobject.Properties["state"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "result"))) { #optional property not found
            $Result = $null
        } else {
            $Result = $JsonParameters.PSobject.Properties["result"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phaseReference"))) { #optional property not found
            $PhaseReference = $null
        } else {
            $PhaseReference = $JsonParameters.PSobject.Properties["phaseReference"].value
        }

        $PSO = [PSCustomObject]@{
            "started" = ${Started}
            "finished" = ${Finished}
            "name" = ${Name}
            "state" = ${State}
            "result" = ${Result}
            "phaseReference" = ${PhaseReference}
        }

        return $PSO
    }

}

