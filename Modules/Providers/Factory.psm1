using module ".\Consumer.psm1"
using module ".\ElasticSearchConsumer.psm1"
using module ".\InfluxDbConsumer.psm1"

Class ConsumerFactory{
    static [Consumer] buildConsumer($config)   {
      $value=$null
        switch ( $config.dataSource) {
          "elastic" { $value=  [ElasticSearchConsumer]::new($config.url,$config.query) }
          "influx" { $value=  [InfluxDbConsumer]::new($config.url,$config.query) }
          Default { throw "Consumer Not Implemented"   }
        }
        return $value
    }
}
