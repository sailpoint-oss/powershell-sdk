#
# IdentityNow cc (private) APIs
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
# Version: 1.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Id
No description available.
.PARAMETER Filename
No description available.
.PARAMETER CreatedBy
No description available.
.PARAMETER DateCreated
No description available.
.PARAMETER XsdVersion
No description available.
.OUTPUTS

ListApplications200ResponseInnerAppProfilesInner<PSCustomObject>
#>

function Initialize-CCListApplications200ResponseInnerAppProfilesInner {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Decimal]]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Filename},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${CreatedBy},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${DateCreated},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${XsdVersion}
    )

    Process {
        'Creating PSCustomObject: PSSailpointCC => CCListApplications200ResponseInnerAppProfilesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "filename" = ${Filename}
            "createdBy" = ${CreatedBy}
            "dateCreated" = ${DateCreated}
            "xsdVersion" = ${XsdVersion}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ListApplications200ResponseInnerAppProfilesInner<PSCustomObject>

.DESCRIPTION

Convert from JSON to ListApplications200ResponseInnerAppProfilesInner<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ListApplications200ResponseInnerAppProfilesInner<PSCustomObject>
#>
function ConvertFrom-CCJsonToListApplications200ResponseInnerAppProfilesInner {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointCC => CCListApplications200ResponseInnerAppProfilesInner' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in CCListApplications200ResponseInnerAppProfilesInner
        $AllProperties = ("id", "filename", "createdBy", "dateCreated", "xsdVersion")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "filename"))) { #optional property not found
            $Filename = $null
        } else {
            $Filename = $JsonParameters.PSobject.Properties["filename"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "createdBy"))) { #optional property not found
            $CreatedBy = $null
        } else {
            $CreatedBy = $JsonParameters.PSobject.Properties["createdBy"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dateCreated"))) { #optional property not found
            $DateCreated = $null
        } else {
            $DateCreated = $JsonParameters.PSobject.Properties["dateCreated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "xsdVersion"))) { #optional property not found
            $XsdVersion = $null
        } else {
            $XsdVersion = $JsonParameters.PSobject.Properties["xsdVersion"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "filename" = ${Filename}
            "createdBy" = ${CreatedBy}
            "dateCreated" = ${DateCreated}
            "xsdVersion" = ${XsdVersion}
        }

        return $PSO
    }

}
