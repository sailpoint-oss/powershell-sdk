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

.PARAMETER Name
Name of the Object
.PARAMETER Description
A description of the machine account
.PARAMETER NativeIdentity
The unique ID of the machine account generated by the source system
.PARAMETER Uuid
The unique ID of the account as determined by the account schema
.PARAMETER ClassificationMethod
Classification Method
.PARAMETER MachineIdentity
The machine identity this account is associated with
.PARAMETER OwnerIdentity
The identity who owns this account.
.PARAMETER AccessType
The connection type of the source this account is from
.PARAMETER Subtype
The sub-type
.PARAMETER Environment
Environment
.PARAMETER Attributes
Custom attributes specific to the machine account
.PARAMETER ConnectorAttributes
The connector attributes for the account
.PARAMETER ManuallyCorrelated
Indicates if the account has been manually correlated to an identity
.PARAMETER ManuallyEdited
Indicates if the account has been manually edited
.PARAMETER Locked
Indicates if the account is currently locked
.PARAMETER Enabled
Indicates if the account is enabled
.PARAMETER HasEntitlements
Indicates if the account has entitlements
.PARAMETER Source
The source this machine account belongs to.
.OUTPUTS

MachineAccount<PSCustomObject>
#>

function Initialize-V2024MachineAccount {
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
        ${NativeIdentity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Uuid},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("SOURCE", "CRITERIA", "DISCOVERY", "MANUAL")]
        [String]
        ${ClassificationMethod},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${MachineIdentity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OwnerIdentity},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccessType},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subtype},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Environment},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${ConnectorAttributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${ManuallyCorrelated} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${ManuallyEdited} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Locked},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${Enabled} = $false,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [Boolean]
        ${HasEntitlements} = $true,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${Source}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024MachineAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$NativeIdentity) {
            throw "invalid value for 'NativeIdentity', 'NativeIdentity' cannot be null."
        }

        if (!$ClassificationMethod) {
            throw "invalid value for 'ClassificationMethod', 'ClassificationMethod' cannot be null."
        }

        if (!$ManuallyEdited) {
            throw "invalid value for 'ManuallyEdited', 'ManuallyEdited' cannot be null."
        }

        if (!$Locked) {
            throw "invalid value for 'Locked', 'Locked' cannot be null."
        }

        if (!$Enabled) {
            throw "invalid value for 'Enabled', 'Enabled' cannot be null."
        }

        if (!$HasEntitlements) {
            throw "invalid value for 'HasEntitlements', 'HasEntitlements' cannot be null."
        }

        if (!$Source) {
            throw "invalid value for 'Source', 'Source' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "name" = ${Name}
            "description" = ${Description}
            "nativeIdentity" = ${NativeIdentity}
            "uuid" = ${Uuid}
            "classificationMethod" = ${ClassificationMethod}
            "machineIdentity" = ${MachineIdentity}
            "ownerIdentity" = ${OwnerIdentity}
            "accessType" = ${AccessType}
            "subtype" = ${Subtype}
            "environment" = ${Environment}
            "attributes" = ${Attributes}
            "connectorAttributes" = ${ConnectorAttributes}
            "manuallyCorrelated" = ${ManuallyCorrelated}
            "manuallyEdited" = ${ManuallyEdited}
            "locked" = ${Locked}
            "enabled" = ${Enabled}
            "hasEntitlements" = ${HasEntitlements}
            "source" = ${Source}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to MachineAccount<PSCustomObject>

.DESCRIPTION

Convert from JSON to MachineAccount<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

MachineAccount<PSCustomObject>
#>
function ConvertFrom-V2024JsonToMachineAccount {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024MachineAccount' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024MachineAccount
        $AllProperties = ("id", "name", "created", "modified", "description", "nativeIdentity", "uuid", "classificationMethod", "machineIdentity", "ownerIdentity", "accessType", "subtype", "environment", "attributes", "connectorAttributes", "manuallyCorrelated", "manuallyEdited", "locked", "enabled", "hasEntitlements", "source")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "nativeIdentity"))) {
            throw "Error! JSON cannot be serialized due to the required property 'nativeIdentity' missing."
        } else {
            $NativeIdentity = $JsonParameters.PSobject.Properties["nativeIdentity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "classificationMethod"))) {
            throw "Error! JSON cannot be serialized due to the required property 'classificationMethod' missing."
        } else {
            $ClassificationMethod = $JsonParameters.PSobject.Properties["classificationMethod"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "connectorAttributes"))) {
            throw "Error! JSON cannot be serialized due to the required property 'connectorAttributes' missing."
        } else {
            $ConnectorAttributes = $JsonParameters.PSobject.Properties["connectorAttributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manuallyEdited"))) {
            throw "Error! JSON cannot be serialized due to the required property 'manuallyEdited' missing."
        } else {
            $ManuallyEdited = $JsonParameters.PSobject.Properties["manuallyEdited"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locked"))) {
            throw "Error! JSON cannot be serialized due to the required property 'locked' missing."
        } else {
            $Locked = $JsonParameters.PSobject.Properties["locked"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "enabled"))) {
            throw "Error! JSON cannot be serialized due to the required property 'enabled' missing."
        } else {
            $Enabled = $JsonParameters.PSobject.Properties["enabled"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "hasEntitlements"))) {
            throw "Error! JSON cannot be serialized due to the required property 'hasEntitlements' missing."
        } else {
            $HasEntitlements = $JsonParameters.PSobject.Properties["hasEntitlements"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "source"))) {
            throw "Error! JSON cannot be serialized due to the required property 'source' missing."
        } else {
            $Source = $JsonParameters.PSobject.Properties["source"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "uuid"))) { #optional property not found
            $Uuid = $null
        } else {
            $Uuid = $JsonParameters.PSobject.Properties["uuid"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "machineIdentity"))) { #optional property not found
            $MachineIdentity = $null
        } else {
            $MachineIdentity = $JsonParameters.PSobject.Properties["machineIdentity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "ownerIdentity"))) { #optional property not found
            $OwnerIdentity = $null
        } else {
            $OwnerIdentity = $JsonParameters.PSobject.Properties["ownerIdentity"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accessType"))) { #optional property not found
            $AccessType = $null
        } else {
            $AccessType = $JsonParameters.PSobject.Properties["accessType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subtype"))) { #optional property not found
            $Subtype = $null
        } else {
            $Subtype = $JsonParameters.PSobject.Properties["subtype"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "environment"))) { #optional property not found
            $Environment = $null
        } else {
            $Environment = $JsonParameters.PSobject.Properties["environment"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manuallyCorrelated"))) { #optional property not found
            $ManuallyCorrelated = $null
        } else {
            $ManuallyCorrelated = $JsonParameters.PSobject.Properties["manuallyCorrelated"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "created" = ${Created}
            "modified" = ${Modified}
            "description" = ${Description}
            "nativeIdentity" = ${NativeIdentity}
            "uuid" = ${Uuid}
            "classificationMethod" = ${ClassificationMethod}
            "machineIdentity" = ${MachineIdentity}
            "ownerIdentity" = ${OwnerIdentity}
            "accessType" = ${AccessType}
            "subtype" = ${Subtype}
            "environment" = ${Environment}
            "attributes" = ${Attributes}
            "connectorAttributes" = ${ConnectorAttributes}
            "manuallyCorrelated" = ${ManuallyCorrelated}
            "manuallyEdited" = ${ManuallyEdited}
            "locked" = ${Locked}
            "enabled" = ${Enabled}
            "hasEntitlements" = ${HasEntitlements}
            "source" = ${Source}
        }

        return $PSO
    }

}

