using module ".\IndicatorConfig.psm1"
using module ".\..\Providers\Consumer.psm1"
using module ".\..\Providers\Factory.psm1"
using module ".\Interval.psm1"

enum IndicatorType{    
    Traffic
    Error
    Latency
    Saturation
    Freshness
    Correctness
    Coverage
}
class Indicator {
    [String] $name
    [IndicatorType] $type
    [String]  $formula
    [Consumer] $provider
    [String]  $threshold
    [Decimal] $weight
    [Interval[]] $intervals
    Indicator($item){
       $this.name=$item.name
       $this.type=$item.type
       $this.formula=$item.formula
       $this.provider=[ConsumerFactory]::buildConsumer($item)
       $this.threshold=$item.threshold
       $this.weight=$item.weight
       $item.intervals.foreach({$this.intervals+=[Interval]::new($_)})
    }
}

