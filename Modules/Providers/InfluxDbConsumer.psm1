using module ".\Consumer.psm1"
Class InfluxDbConsumer:Consumer{
    InfluxDbConsumer(){}
    InfluxDbConsumer($purl,$pquery): base($purl,$pquery) {   
        $this.type=[ConsumerType]::Influx
    }
}