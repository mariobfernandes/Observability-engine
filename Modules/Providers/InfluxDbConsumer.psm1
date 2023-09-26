using module ".\Consumer.psm1"
Class InfluxDbConsumer:Consumer{

    InfluxDbConsumer() {
        $this.type=[ConsumerType]::Influx
    }
}