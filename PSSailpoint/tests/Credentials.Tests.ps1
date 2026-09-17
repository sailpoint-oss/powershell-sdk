# Credentials.Tests.ps1
#
# Guards against credential disclosure in the debug stream. These tests use
# synthetic credentials and a mocked token endpoint, so they need no tenant
# configuration and make no network calls.

BeforeAll {
    . (Join-Path $PSScriptRoot '..' 'Configuration.ps1')

    $Script:SyntheticClientId = 'synthetic-client-id-0123456789abcdef'
    $Script:SyntheticClientSecret = 'synthetic-client-secret-fedcba9876543210'
}

Describe 'Format-RedactedValue' {
    It 'Reports unset values without a placeholder secret' {
        Format-RedactedValue $null | Should -Be '[not set]'
        Format-RedactedValue '' | Should -Be '[not set]'
    }

    It 'Never returns the value it was given' {
        $Redacted = Format-RedactedValue $Script:SyntheticClientSecret

        $Redacted | Should -Not -Match ([regex]::Escape($Script:SyntheticClientSecret))
        $Redacted | Should -Be ("[redacted, {0} characters]" -f $Script:SyntheticClientSecret.Length)
    }
}

Describe 'Get-IDNAccessToken' {
    BeforeEach {
        Set-DefaultConfiguration `
            -TokenUrl 'https://example.identitynow.invalid/oauth/token' `
            -ClientId $Script:SyntheticClientId `
            -ClientSecret $Script:SyntheticClientSecret
    }

    It 'Keeps the client credentials out of debug output' {
        Mock Invoke-WebRequest {
            [PSCustomObject]@{
                statuscode = '200'
                Content    = '{"access_token":"synthetic-access-token","expires_in":3600}'
            }
        }

        $DebugPreference = 'Continue'
        $Output = Get-IDNAccessToken 5>&1 | Out-String

        $Output | Should -Not -Match ([regex]::Escape($Script:SyntheticClientSecret))
        $Output | Should -Not -Match ([regex]::Escape($Script:SyntheticClientId))
        $Output | Should -Match 'ClientSecret: \[redacted'
    }

    It 'Keeps the client credentials out of debug output when the request fails' {
        Mock Invoke-WebRequest { throw 'synthetic token endpoint failure' }

        $DebugPreference = 'Continue'
        $Output = Get-IDNAccessToken 5>&1 | Out-String

        $Output | Should -Not -Match ([regex]::Escape($Script:SyntheticClientSecret))
        $Output | Should -Not -Match ([regex]::Escape($Script:SyntheticClientId))
    }
}
