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
Non-Employee record id.
.PARAMETER AccountName
Requested identity account name.
.PARAMETER FirstName
Non-Employee's first name.
.PARAMETER LastName
Non-Employee's last name.
.PARAMETER Email
Non-Employee's email.
.PARAMETER Phone
Non-Employee's phone.
.PARAMETER Manager
The account ID of a valid identity to serve as this non-employee's manager.
.PARAMETER SourceId
Non-Employee's source id.
.PARAMETER VarData
Additional attributes for a non-employee. Up to 10 custom attributes can be added.
.PARAMETER StartDate
Non-Employee employment start date.
.PARAMETER EndDate
Non-Employee employment end date.
.PARAMETER Modified
When the request was last modified.
.PARAMETER Created
When the request was created.
.OUTPUTS

NonEmployeeRecord<PSCustomObject>
#>

function Initialize-V2024NonEmployeeRecord {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${AccountName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${FirstName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${LastName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Email},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Phone},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Manager},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SourceId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${VarData},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${StartDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndDate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2024 => V2024NonEmployeeRecord' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "accountName" = ${AccountName}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "email" = ${Email}
            "phone" = ${Phone}
            "manager" = ${Manager}
            "sourceId" = ${SourceId}
            "data" = ${VarData}
            "startDate" = ${StartDate}
            "endDate" = ${EndDate}
            "modified" = ${Modified}
            "created" = ${Created}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to NonEmployeeRecord<PSCustomObject>

.DESCRIPTION

Convert from JSON to NonEmployeeRecord<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

NonEmployeeRecord<PSCustomObject>
#>
function ConvertFrom-V2024JsonToNonEmployeeRecord {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2024 => V2024NonEmployeeRecord' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2024NonEmployeeRecord
        $AllProperties = ("id", "accountName", "firstName", "lastName", "email", "phone", "manager", "sourceId", "data", "startDate", "endDate", "modified", "created")
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "accountName"))) { #optional property not found
            $AccountName = $null
        } else {
            $AccountName = $JsonParameters.PSobject.Properties["accountName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "firstName"))) { #optional property not found
            $FirstName = $null
        } else {
            $FirstName = $JsonParameters.PSobject.Properties["firstName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastName"))) { #optional property not found
            $LastName = $null
        } else {
            $LastName = $JsonParameters.PSobject.Properties["lastName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "email"))) { #optional property not found
            $Email = $null
        } else {
            $Email = $JsonParameters.PSobject.Properties["email"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "phone"))) { #optional property not found
            $Phone = $null
        } else {
            $Phone = $JsonParameters.PSobject.Properties["phone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "manager"))) { #optional property not found
            $Manager = $null
        } else {
            $Manager = $JsonParameters.PSobject.Properties["manager"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "sourceId"))) { #optional property not found
            $SourceId = $null
        } else {
            $SourceId = $JsonParameters.PSobject.Properties["sourceId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "data"))) { #optional property not found
            $VarData = $null
        } else {
            $VarData = $JsonParameters.PSobject.Properties["data"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startDate"))) { #optional property not found
            $StartDate = $null
        } else {
            $StartDate = $JsonParameters.PSobject.Properties["startDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "endDate"))) { #optional property not found
            $EndDate = $null
        } else {
            $EndDate = $JsonParameters.PSobject.Properties["endDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "modified"))) { #optional property not found
            $Modified = $null
        } else {
            $Modified = $JsonParameters.PSobject.Properties["modified"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "created"))) { #optional property not found
            $Created = $null
        } else {
            $Created = $JsonParameters.PSobject.Properties["created"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "accountName" = ${AccountName}
            "firstName" = ${FirstName}
            "lastName" = ${LastName}
            "email" = ${Email}
            "phone" = ${Phone}
            "manager" = ${Manager}
            "sourceId" = ${SourceId}
            "data" = ${VarData}
            "startDate" = ${StartDate}
            "endDate" = ${EndDate}
            "modified" = ${Modified}
            "created" = ${Created}
        }

        return $PSO
    }

}

