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

.PARAMETER ProductName
Name of the Product
.PARAMETER Url
URL of the Product
.PARAMETER ProductTenantId
An identifier for a specific product-tenant combination
.PARAMETER ProductRegion
Product region
.PARAMETER ProductRight
Right needed for the Product
.PARAMETER ApiUrl
API URL of the Product
.PARAMETER Licenses
No description available.
.PARAMETER Attributes
Additional attributes for a product
.PARAMETER Zone
Zone
.PARAMETER Status
Status of the product
.PARAMETER StatusDateTime
Status datetime
.PARAMETER Reason
If there's a tenant provisioning failure then reason will have the description of error
.PARAMETER Notes
Product could have additional notes added during tenant provisioning.
.PARAMETER DateCreated
Date when the product was created
.PARAMETER LastUpdated
Date when the product was last updated
.PARAMETER OrgType
Type of org
.OUTPUTS

Product<PSCustomObject>
#>

function Initialize-V2025Product {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProductName},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Url},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProductTenantId},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProductRegion},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ProductRight},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ApiUrl},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${Licenses},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Attributes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Zone},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Status},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${StatusDateTime},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Reason},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Notes},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${DateCreated},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${LastUpdated},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("development", "staging", "production", "test", "partner", "training", "demonstration", "sandbox", "")]
        [String]
        ${OrgType}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025Product' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "productName" = ${ProductName}
            "url" = ${Url}
            "productTenantId" = ${ProductTenantId}
            "productRegion" = ${ProductRegion}
            "productRight" = ${ProductRight}
            "apiUrl" = ${ApiUrl}
            "licenses" = ${Licenses}
            "attributes" = ${Attributes}
            "zone" = ${Zone}
            "status" = ${Status}
            "statusDateTime" = ${StatusDateTime}
            "reason" = ${Reason}
            "notes" = ${Notes}
            "dateCreated" = ${DateCreated}
            "lastUpdated" = ${LastUpdated}
            "orgType" = ${OrgType}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to Product<PSCustomObject>

.DESCRIPTION

Convert from JSON to Product<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

Product<PSCustomObject>
#>
function ConvertFrom-V2025JsonToProduct {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025Product' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025Product
        $AllProperties = ("productName", "url", "productTenantId", "productRegion", "productRight", "apiUrl", "licenses", "attributes", "zone", "status", "statusDateTime", "reason", "notes", "dateCreated", "lastUpdated", "orgType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "productName"))) { #optional property not found
            $ProductName = $null
        } else {
            $ProductName = $JsonParameters.PSobject.Properties["productName"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "url"))) { #optional property not found
            $Url = $null
        } else {
            $Url = $JsonParameters.PSobject.Properties["url"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "productTenantId"))) { #optional property not found
            $ProductTenantId = $null
        } else {
            $ProductTenantId = $JsonParameters.PSobject.Properties["productTenantId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "productRegion"))) { #optional property not found
            $ProductRegion = $null
        } else {
            $ProductRegion = $JsonParameters.PSobject.Properties["productRegion"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "productRight"))) { #optional property not found
            $ProductRight = $null
        } else {
            $ProductRight = $JsonParameters.PSobject.Properties["productRight"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "apiUrl"))) { #optional property not found
            $ApiUrl = $null
        } else {
            $ApiUrl = $JsonParameters.PSobject.Properties["apiUrl"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "licenses"))) { #optional property not found
            $Licenses = $null
        } else {
            $Licenses = $JsonParameters.PSobject.Properties["licenses"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "attributes"))) { #optional property not found
            $Attributes = $null
        } else {
            $Attributes = $JsonParameters.PSobject.Properties["attributes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "zone"))) { #optional property not found
            $Zone = $null
        } else {
            $Zone = $JsonParameters.PSobject.Properties["zone"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "status"))) { #optional property not found
            $Status = $null
        } else {
            $Status = $JsonParameters.PSobject.Properties["status"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "statusDateTime"))) { #optional property not found
            $StatusDateTime = $null
        } else {
            $StatusDateTime = $JsonParameters.PSobject.Properties["statusDateTime"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reason"))) { #optional property not found
            $Reason = $null
        } else {
            $Reason = $JsonParameters.PSobject.Properties["reason"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "notes"))) { #optional property not found
            $Notes = $null
        } else {
            $Notes = $JsonParameters.PSobject.Properties["notes"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "dateCreated"))) { #optional property not found
            $DateCreated = $null
        } else {
            $DateCreated = $JsonParameters.PSobject.Properties["dateCreated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "lastUpdated"))) { #optional property not found
            $LastUpdated = $null
        } else {
            $LastUpdated = $JsonParameters.PSobject.Properties["lastUpdated"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "orgType"))) { #optional property not found
            $OrgType = $null
        } else {
            $OrgType = $JsonParameters.PSobject.Properties["orgType"].value
        }

        $PSO = [PSCustomObject]@{
            "productName" = ${ProductName}
            "url" = ${Url}
            "productTenantId" = ${ProductTenantId}
            "productRegion" = ${ProductRegion}
            "productRight" = ${ProductRight}
            "apiUrl" = ${ApiUrl}
            "licenses" = ${Licenses}
            "attributes" = ${Attributes}
            "zone" = ${Zone}
            "status" = ${Status}
            "statusDateTime" = ${StatusDateTime}
            "reason" = ${Reason}
            "notes" = ${Notes}
            "dateCreated" = ${DateCreated}
            "lastUpdated" = ${LastUpdated}
            "orgType" = ${OrgType}
        }

        return $PSO
    }

}

