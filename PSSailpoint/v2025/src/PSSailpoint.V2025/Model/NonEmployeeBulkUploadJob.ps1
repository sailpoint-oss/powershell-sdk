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

No description available.

.PARAMETER Id
The bulk upload job's ID. (UUID)
.PARAMETER SourceId
The ID of the source to bulk-upload non-employees to. (UUID)
.PARAMETER Created
The date-time the job was submitted.
.PARAMETER Modified
The date-time that the job was last updated.
.PARAMETER Status
Returns the following values indicating the progress or result of the bulk upload job. ""PENDING"" means the job is queued and waiting to be processed. ""IN_PROGRESS"" means the job is currently being processed. ""COMPLETED"" means the job has been completed without any errors. ""ERROR"" means the job failed to process with errors. 
.OUTPUTS

NonEmployeeBulkUploadJob<PSCustomObject>
#>

function Initialize-V2025NonEmployeeBulkUploadJob {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("PENDING", "IN_PROGRESS", "COMPLETED", "ERROR")]
        [String]
        ${Status}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025NonEmployeeBulkUploadJob' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "sourceId" = ${SourceId}
            "created" = ${Created}
            "modified" = ${Modified}
            "status" = ${Status}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeBulkUploadJob<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeBulkUploadJob<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeBulkUploadJob<PSCustomObject>
#>
function ConvertFrom-V2025JsonToNonEmployeeBulkUploadJob {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025NonEmployeeBulkUploadJob' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025NonEmployeeBulkUploadJob
        $AllProperties = ("id", "sourceId", "created", "modified", "status")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) { #optional property not found
            $SourceId = $null
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "sourceId" = ${SourceId}
            "created" = ${Created}
            "modified" = ${Modified}
            "status" = ${Status}
        }

        return $PSO
    }

}

