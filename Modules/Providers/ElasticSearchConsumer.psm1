using module ".\Consumer.psm1"

Class ElasticSearchConsumer:Consumer{
    ElasticSearchConsumer($config): base($config) {       
        $this.type=[ConsumerType]::Elastic
    }

    #[PSCustomObject] query(){
    #    #$response=Invoke-WebRequest 
    #}         
}