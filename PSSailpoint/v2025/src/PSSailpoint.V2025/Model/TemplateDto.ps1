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

.PARAMETER Key
The key of the template
.PARAMETER Name
The name of the Task Manager Subscription
.PARAMETER Medium
The message medium. More mediums may be added in the future.
.PARAMETER Locale
The locale for the message text, a BCP 47 language tag.
.PARAMETER Subject
The subject line in the template
.PARAMETER Header
The header value is now located within the body field. If included with non-null values, will result in a 400.
.PARAMETER Body
The body in the template
.PARAMETER Footer
The footer value is now located within the body field. If included with non-null values, will result in a 400.
.PARAMETER VarFrom
The ""From:"" address in the template
.PARAMETER ReplyTo
The ""Reply To"" line in the template
.PARAMETER Description
The description in the template
.PARAMETER Id
This is auto-generated.
.PARAMETER Created
The time when this template is created. This is auto-generated.
.PARAMETER Modified
The time when this template was last modified. This is auto-generated.
.PARAMETER SlackTemplate
No description available.
.PARAMETER TeamsTemplate
No description available.
.OUTPUTS

TemplateDto<PSCustomObject>
#>

function Initialize-V2025TemplateDto {
    [CmdletBinding()]
    Param (
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("EMAIL", "PHONE", "SMS", "SLACK", "TEAMS")]
        [String]
        ${Medium},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Locale},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Subject},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Header},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Body},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Footer},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${VarFrom},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReplyTo},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Created},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${Modified},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${SlackTemplate},
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TeamsTemplate}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint.V2025 => V2025TemplateDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if (!$Key) {
            throw "invalid value for 'Key', 'Key' cannot be null."
        }

        if (!$Medium) {
            throw "invalid value for 'Medium', 'Medium' cannot be null."
        }

        if (!$Locale) {
            throw "invalid value for 'Locale', 'Locale' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "name" = ${Name}
            "medium" = ${Medium}
            "locale" = ${Locale}
            "subject" = ${Subject}
            "header" = ${Header}
            "body" = ${Body}
            "footer" = ${Footer}
            "from" = ${VarFrom}
            "replyTo" = ${ReplyTo}
            "description" = ${Description}
            "id" = ${Id}
            "created" = ${Created}
            "modified" = ${Modified}
            "slackTemplate" = ${SlackTemplate}
            "teamsTemplate" = ${TeamsTemplate}
        }

        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to TemplateDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to TemplateDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

TemplateDto<PSCustomObject>
#>
function ConvertFrom-V2025JsonToTemplateDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint.V2025 => V2025TemplateDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in V2025TemplateDto
        $AllProperties = ("key", "name", "medium", "locale", "subject", "header", "body", "footer", "from", "replyTo", "description", "id", "created", "modified", "slackTemplate", "teamsTemplate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'key' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) {
            throw "Error! JSON cannot be serialized due to the required property 'key' missing."
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "medium"))) {
            throw "Error! JSON cannot be serialized due to the required property 'medium' missing."
        } else {
            $Medium = $JsonParameters.PSobject.Properties["medium"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "locale"))) {
            throw "Error! JSON cannot be serialized due to the required property 'locale' missing."
        } else {
            $Locale = $JsonParameters.PSobject.Properties["locale"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "subject"))) { #optional property not found
            $Subject = $null
        } else {
            $Subject = $JsonParameters.PSobject.Properties["subject"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "header"))) { #optional property not found
            $Header = $null
        } else {
            $Header = $JsonParameters.PSobject.Properties["header"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "body"))) { #optional property not found
            $Body = $null
        } else {
            $Body = $JsonParameters.PSobject.Properties["body"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "footer"))) { #optional property not found
            $Footer = $null
        } else {
            $Footer = $JsonParameters.PSobject.Properties["footer"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "from"))) { #optional property not found
            $VarFrom = $null
        } else {
            $VarFrom = $JsonParameters.PSobject.Properties["from"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "replyTo"))) { #optional property not found
            $ReplyTo = $null
        } else {
            $ReplyTo = $JsonParameters.PSobject.Properties["replyTo"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
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

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "slackTemplate"))) { #optional property not found
            $SlackTemplate = $null
        } else {
            $SlackTemplate = $JsonParameters.PSobject.Properties["slackTemplate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "teamsTemplate"))) { #optional property not found
            $TeamsTemplate = $null
        } else {
            $TeamsTemplate = $JsonParameters.PSobject.Properties["teamsTemplate"].value
        }

        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "name" = ${Name}
            "medium" = ${Medium}
            "locale" = ${Locale}
            "subject" = ${Subject}
            "header" = ${Header}
            "body" = ${Body}
            "footer" = ${Footer}
            "from" = ${VarFrom}
            "replyTo" = ${ReplyTo}
            "description" = ${Description}
            "id" = ${Id}
            "created" = ${Created}
            "modified" = ${Modified}
            "slackTemplate" = ${SlackTemplate}
            "teamsTemplate" = ${TeamsTemplate}
        }

        return $PSO
    }

}

