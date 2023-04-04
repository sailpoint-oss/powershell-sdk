#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Id
Job ID.
.PARAMETER Status
The job status.
.PARAMETER Payload
No description available.
.OUTPUTS

SourceSyncJob<PSCustomObject>
#>

function Initialize-BetaSourceSyncJob {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("QUEUED", "IN_PROGRESS", "SUCCESS", "ERROR")]
        [String]
        ${Status},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Payload}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSourceSyncJob' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $Status) {
            throw "invalid value for 'Status', 'Status' cannot be null."
        }

        if ($null -eq $Payload) {
            throw "invalid value for 'Payload', 'Payload' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "status" = ${Status}
            "payload" = ${Payload}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SourceSyncJob<PSCustomObject>

.DESCRIPTION

Convert from JSON to SourceSyncJob<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SourceSyncJob<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSourceSyncJob {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSourceSyncJob' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSourceSyncJob
        $AllProperties = ("id", "status", "payload")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) {
            throw "Error! JSON cannot be serialized due to the required property 'status' missing."
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "payload"))) {
            throw "Error! JSON cannot be serialized due to the required property 'payload' missing."
        } else {
            $Payload = $JsonParameters.PSobject.Properties["payload"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "status" = ${Status}
            "payload" = ${Payload}
        }

        return $PSO
    }

}
