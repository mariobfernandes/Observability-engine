using module ".\Modules\Providers\Consumer.psm1"

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
}

