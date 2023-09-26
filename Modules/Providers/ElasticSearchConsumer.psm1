using module ".\Consumer.psm1"

Class ElasticSearchConsumer:Consumer{
    ElasticSearchConsumer($purl,$pquery): base($purl,$pquery) {       
        $this.type=[ConsumerType]::Elastic
    }
    
}