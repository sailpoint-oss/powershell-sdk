#
# Identity Security Cloud V2024 API
# Use these APIs to interact with the Identity Security Cloud platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: v2024
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Id
The identity's unique identifier for the outlier record
.PARAMETER IdentityId
The ID of the identity that is detected as an outlier
.PARAMETER Type
The type of outlier summary
.PARAMETER FirstDetectionDate
The first date the outlier was detected
.PARAMETER LatestDetectionDate
The most recent date the outlier was detected
.PARAMETER Ignored
Flag whether or not the outlier has been ignored
.PARAMETER Attributes
Object containing mapped identity attributes
.PARAMETER Score
The outlier score determined by the detection engine ranging from 0..1
.PARAMETER UnignoreType
Enum value of if the outlier manually or automatically un-ignored. Will be NULL if outlier is not ignored
.PARAMETER UnignoreDate
shows date when last time has been unignored outlier
.PARAMETER IgnoreDate
shows date when last time has been ignored outlier
.OUTPUTS

Outlier<PSCustomObject>
#>

function Initialize-V2024Outlier {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${IdentityId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("LOW_SIMILARITY", "STRUCTURAL")]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${FirstDetectionDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LatestDetectionDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${Ignored},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Double]]
        ${Score},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("MANUAL", "AUTOMATIC", "")]
        [String]
        ${UnignoreType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${UnignoreDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${IgnoreDate}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024Outlier' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "identityId" = ${IdentityId}
            "type" = ${Type}
            "firstDetectionDate" = ${FirstDetectionDate}
            "latestDetectionDate" = ${LatestDetectionDate}
            "ignored" = ${Ignored}
            "attributes" = ${Attributes}
            "score" = ${Score}
            "unignoreType" = ${UnignoreType}
            "unignoreDate" = ${UnignoreDate}
            "ignoreDate" = ${IgnoreDate}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Outlier<PSCustomObject>

.DESCRIPTION

Convert from JSON to Outlier<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Outlier<PSCustomObject>
#>
function ConvertFrom-V2024JsonToOutlier {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024Outlier' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024Outlier
        $AllProperties = ("id", "identityId", "type", "firstDetectionDate", "latestDetectionDate", "ignored", "attributes", "score", "unignoreType", "unignoreDate", "ignoreDate")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "identityId"))) { #optional property not found
            $IdentityId = $null
        } else {
            $IdentityId = $JsonParameters.PSobject.Properties["identityId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) { #optional property not found
            $Type = $null
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstDetectionDate"))) { #optional property not found
            $FirstDetectionDate = $null
        } else {
            $FirstDetectionDate = $JsonParameters.PSobject.Properties["firstDetectionDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "latestDetectionDate"))) { #optional property not found
            $LatestDetectionDate = $null
        } else {
            $LatestDetectionDate = $JsonParameters.PSobject.Properties["latestDetectionDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ignored"))) { #optional property not found
            $Ignored = $null
        } else {
            $Ignored = $JsonParameters.PSobject.Properties["ignored"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "score"))) { #optional property not found
            $Score = $null
        } else {
            $Score = $JsonParameters.PSobject.Properties["score"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unignoreType"))) { #optional property not found
            $UnignoreType = $null
        } else {
            $UnignoreType = $JsonParameters.PSobject.Properties["unignoreType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "unignoreDate"))) { #optional property not found
            $UnignoreDate = $null
        } else {
            $UnignoreDate = $JsonParameters.PSobject.Properties["unignoreDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ignoreDate"))) { #optional property not found
            $IgnoreDate = $null
        } else {
            $IgnoreDate = $JsonParameters.PSobject.Properties["ignoreDate"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "identityId" = ${IdentityId}
            "type" = ${Type}
            "firstDetectionDate" = ${FirstDetectionDate}
            "latestDetectionDate" = ${LatestDetectionDate}
            "ignored" = ${Ignored}
            "attributes" = ${Attributes}
            "score" = ${Score}
            "unignoreType" = ${UnignoreType}
            "unignoreDate" = ${UnignoreDate}
            "ignoreDate" = ${IgnoreDate}
        }

        return $PSO
    }

}
