using module ".\Consumer.psm1"
using module ".\ElasticSearchConsumer.psm1"
using module ".\InfluxDbConsumer.psm1"

static Class ConsumerFactory{
    static [Consumer] buildConsumer($type,$url,$query)   {
        switch ($type) {
          "elastic" { return  [ElasticSearchConsumer]::new($url,$query) }
          "influx" { return  [InfluxDbConsumer]::new($url,$query) }
          Default { throw "Consumer Not Implemented"   }
        }
    }
}
