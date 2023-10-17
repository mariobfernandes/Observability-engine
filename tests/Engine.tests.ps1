
Describe "Engine Config Load"{
    BeforeAll {    
        . $PSCommandPath.Replace('Engine.tests.ps1', '\..\Engine.ps1')    
         $config=$PSScriptRoot + "\..\config\Applications.json"                  
    }
    
    It "Should have at application 930 loaded"{                     
        $engine=[Engine]::new($config)  
        $engine.applications[0].id| Should  -Be 930
    }
    It "Should have a traffic indicator"{
        $engine=[Engine]::new($config)        
        $engine.applications[0].indicators[0].name| Should  -Be "traffic"
    } 
    It "Should have a traffic indicator with more than 1 interval"{         
        $engine=[Engine]::new($config)
        $engine.applications[0].indicators[0].intervals.count| Should  -BeGreaterThan 1
    } 
    It "Should have silent periods"{                 
        $engine=[Engine]::new($config)
        $engine.applications[0].silent.count| Should  -BeGreaterThan 0
    } 
    It "Should have coorect levels set"{                 
        $engine=[Engine]::new($config)
        $engine.applications[0].levels.unavailable | Should  -Be 0
        $engine.applications[0].levels.critical | Should  -Be 0.3
        $engine.applications[0].levels.low | Should  -Be 0.5
        $engine.applications[0].levels.normal | Should  -Be 0.8
    } 

}
