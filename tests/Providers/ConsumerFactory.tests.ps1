
using module ".\..\..\Modules\Providers\Factory.psm1"
using module ".\..\..\Modules\Providers\Consumer.psm1"
using module ".\..\..\Modules\Indicators\IndicatorConfig.psm1"


BeforeAll {
    $config=[IndicatorConfig]::new()
    $config.name="traffic"    
    $config.url="http://xpto.elastic.co:9200"
    $config.query="{data:bla bla bla}"
    $config.type=""

}


Describe "ConsumerFactory tests"{
       It "Should return an ElasticConsumer Type"{         
        $config.dataSource="elastic"         
         [ConsumerFactory]::buildConsumer($config).type | Should -Be ([ConsumerType]::Elastic.toString())
    }
    It "Should return an ElasticConsumer Type"{         
        $config.dataSource="influx"         
         [ConsumerFactory]::buildConsumer($config).type | Should -Be ([ConsumerType]::Influx.toString())
    }    
}
    
