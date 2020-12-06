function test {1}

BeforeAll {
    . $PSCommandPath
}

Describe "test" {
    It "Passes invisibly" {
        test | Should -Be 1
    }

    It "Fails loudly" {
        test | Should -Be 2
    }
}

# "Passes invisibly" does not appear after Invoke-Pester, but is found & run 'Tests Passed: 1, Failed: 1, Skipped: 0 NotRun: 2
# Any -Output or any -Show value (except Fails or None) causes it to appear correctly.
