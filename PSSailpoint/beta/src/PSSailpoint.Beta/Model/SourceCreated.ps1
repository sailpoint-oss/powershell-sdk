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

.PARAMETER Id
The unique ID of the source.
.PARAMETER Name
Human friendly name of the source.
.PARAMETER Type
The connection type.
.PARAMETER Created
The date and time the source was created.
.PARAMETER Connector
The connector type used to connect to the source.
.PARAMETER Actor
No description available.
.OUTPUTS

SourceCreated<PSCustomObject>
#>

function Initialize-BetaSourceCreated {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Type},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.DateTime]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Connector},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Actor}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.Beta => BetaSourceCreated' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if (!$Name) {
            throw "invalid value for 'Name', 'Name' cannot be null."
        }

        if (!$Type) {
            throw "invalid value for 'Type', 'Type' cannot be null."
        }

        if (!$Created) {
            throw "invalid value for 'Created', 'Created' cannot be null."
        }

        if (!$Connector) {
            throw "invalid value for 'Connector', 'Connector' cannot be null."
        }

        if (!$Actor) {
            throw "invalid value for 'Actor', 'Actor' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "type" = ${Type}
            "created" = ${Created}
            "connector" = ${Connector}
            "actor" = ${Actor}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SourceCreated<PSCustomObject>

.DESCRIPTION

Convert from JSON to SourceCreated<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SourceCreated<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSourceCreated {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.Beta => BetaSourceCreated' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSourceCreated
        $AllProperties = ("id", "name", "type", "created", "connector", "actor")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) {
            throw "Error! JSON cannot be serialized due to the required property 'name' missing."
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "type"))) {
            throw "Error! JSON cannot be serialized due to the required property 'type' missing."
        } else {
            $Type = $JsonParameters.PSobject.Properties["type"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) {
            throw "Error! JSON cannot be serialized due to the required property 'created' missing."
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connector"))) {
            throw "Error! JSON cannot be serialized due to the required property 'connector' missing."
        } else {
            $Connector = $JsonParameters.PSobject.Properties["connector"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "actor"))) {
            throw "Error! JSON cannot be serialized due to the required property 'actor' missing."
        } else {
            $Actor = $JsonParameters.PSobject.Properties["actor"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "type" = ${Type}
            "created" = ${Created}
            "connector" = ${Connector}
            "actor" = ${Actor}
        }

        return $PSO
    }

}
