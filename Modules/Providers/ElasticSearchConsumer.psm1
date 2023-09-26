using module ".\Consumer.psm1"
Class ElasticSearchConsumer:Consumer{
    ElasticSearchConsumer() {
        $this.type=[ConsumerType]::Elastic
    }
    
}