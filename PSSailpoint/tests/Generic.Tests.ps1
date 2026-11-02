# Generic.Tests.ps1
#
# Offline tests for the generic cmdlets (Invoke-GenericGet, Invoke-GenericPost,
# ...). The token lookup and the HTTP call are mocked, so these tests need no
# tenant configuration and make no network calls.

BeforeAll {
    Import-Module (Join-Path $PSScriptRoot '..' 'PSSailpoint.psd1') -Force

    Set-DefaultConfiguration -BaseUrl 'https://acme.api.identitynow.com'

    # Records the arguments of the last mocked request.
    $Global:GenericTestRequest = $null
    $Script:MockRequest = {
        $Global:GenericTestRequest = @{
            Uri     = $Uri
            Method  = $Method
            Headers = $Headers
            Body    = $Body
        }
        [PSCustomObject]@{
            StatusCode = 200
            Content    = '[{"id":"1"}]'
            Headers    = @{ 'Content-Type' = @('application/json') }
        }
    }
}

AfterAll {
    Remove-Variable -Name GenericTestRequest -Scope Global -ErrorAction SilentlyContinue
}

Describe 'Invoke-Generic*' {
    BeforeEach {
        Mock -ModuleName PSSailpoint.Generic Get-IDNAccessToken { 'token-1' }
        Mock -ModuleName PSSailpoint.Generic Invoke-WebRequest $Script:MockRequest
    }

    It 'Keeps the slashes of a multi-segment path and adds no version' {
        $Result = Invoke-GenericGet -Path '/entitlements/v1/identities/2c91808a/entitlements' -Limit 10 -Filters 'name eq "x"'

        $Request = $Global:GenericTestRequest
        $Request.Uri.AbsolutePath | Should -Be '/entitlements/v1/identities/2c91808a/entitlements'
        $Query = [System.Web.HttpUtility]::ParseQueryString($Request.Uri.Query)
        $Query['limit'] | Should -Be '10'
        $Query['filters'] | Should -Be 'name eq "x"'
        $Request.Headers['Authorization'] | Should -Be 'Bearer token-1'
        # PowerShell unrolls a one-item list on return, as for the partition cmdlets.
        @($Result)[0]['id'] | Should -Be '1'
    }

    It 'Encodes each segment and keeps a query string from the path' {
        Invoke-GenericGet -Path 'accounts/v1/a b?detailLevel=SLIM' -Limit 5 | Out-Null

        $Request = $Global:GenericTestRequest
        $Request.Uri.AbsolutePath | Should -Be '/accounts/v1/a%20b'
        $Query = [System.Web.HttpUtility]::ParseQueryString($Request.Uri.Query)
        $Query['detailLevel'] | Should -Be 'SLIM'
        $Query['limit'] | Should -Be '5'
    }

    It 'Sends a JSON Patch list with the json-patch content type' {
        $Patch = @(@{ op = 'replace'; path = '/description'; value = 'New' })

        Invoke-GenericPatch -Path 'transforms/v1/1234' -RequestBody $Patch | Out-Null

        $Request = $Global:GenericTestRequest
        $Request.Method | Should -Be 'PATCH'
        $Request.Headers['Content-Type'] | Should -Be 'application/json-patch+json'
        $Sent = ConvertFrom-Json $Request.Body -AsHashtable -NoEnumerate
        $Sent.Count | Should -Be 1
        $Sent[0]['op'] | Should -Be 'replace'
        $Sent[0]['value'] | Should -Be 'New'
    }

    It 'Sends a hashtable POST body as JSON to a v2 path' {
        Invoke-GenericPost -Path 'sources/v2/2c91808a/provisioning-policies' -RequestBody @{ name = 'Test'; type = 'lower' } | Out-Null

        $Request = $Global:GenericTestRequest
        $Request.Method | Should -Be 'POST'
        $Request.Uri.AbsolutePath | Should -Be '/sources/v2/2c91808a/provisioning-policies'
        $Sent = ConvertFrom-Json $Request.Body -AsHashtable
        $Sent['name'] | Should -Be 'Test'
        $Sent['type'] | Should -Be 'lower'
    }

    It 'Does not send the experimental header unless asked' {
        Invoke-GenericGet -Path 'accounts/v1' | Out-Null

        $Global:GenericTestRequest.Headers.ContainsKey('X-SailPoint-Experimental') | Should -BeFalse
    }
}
