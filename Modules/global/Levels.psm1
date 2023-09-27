Class Levels{
    [decimal] $unavailable
    [decimal] $critical
    [decimal] $low
    [decimal] $normal
    Levels($levels) {
        $this.unavailable=$levels.unavailable
        $this.critical=$levels.critical
        $this.low=$levels.low
        $this.normal=$levels.normal
    }
}