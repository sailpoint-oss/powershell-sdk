Describe 'V3' {
    It 'Returns results for Get-Accounts' {
        $Response = Get-Accounts -WithHttpInfo
        
        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200

    }

    It 'Returns results for Invoke-Paginate' {
        $Response = Invoke-Paginate "Get-Accounts" -Increment 50 -Limit 200 -InitialOffset 0 -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }

    It 'Returns results for Invoke-PaginateSearch' {
        $Json = @"
        {
            "indices": [
                "identities"
            ],
            "query": {
                "query": "*",
            },
            "sort": ["-name"]
        }
"@

        $Search = ConvertFrom-JsonToSearch -Json $Json
        $Response = Invoke-PaginateSearch -Increment 10 -Limit 100 -InitialOffset 0 -Search $Search -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }

    It 'Returns results for Get-Transforms' {
        $Response = Get-Transforms -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }

}


Describe 'Beta' {
    It 'Returns results for Get-BetaAccounts' {
        $Response = Get-Accounts -WithHttpInfo
        
        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200

    }

    It 'Returns results for Invoke-Paginate' {
        $Response = Invoke-Paginate "Get-BetaIdentityProfiles" -Increment 1 -Limit 5 -InitialOffset 0 -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.Response.Count | Should -Be 5
        $Response.StatusCode | Should -Be 200
    }

    It 'Returns results for Get-Sources' {
        $Response = Get-Sources -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }

    It 'Returns results for Get-Connectors' {
        $Response = Get-BetaConnectorList -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }

}

Describe 'V2' {
    It 'Returns results for Get-Workgroups' {
        $Response = Get-V2Workgroups -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}

Describe 'CC' {
    It 'Returns results for Get-CCAccounts' {
        $Response = Get-CCAccounts -WithHttpInfo

        $Response.Response | Should -Not -BeNullOrEmpty
        $Response.StatusCode | Should -Be 200
    }
}