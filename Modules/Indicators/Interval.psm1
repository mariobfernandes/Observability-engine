class Interval {
    [long] $threshold
    [decimal] $value
    Interval($item){
        $this.threshold=$item.threshold
        $this.value=$item.value
    }

}