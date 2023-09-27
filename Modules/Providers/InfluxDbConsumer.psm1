using module ".\Consumer.psm1"
Class InfluxDbConsumer:Consumer{
    InfluxDbConsumer(){}
    InfluxDbConsumer($config): base($config) {   
        $this.type=[ConsumerType]::Influx
    }
}