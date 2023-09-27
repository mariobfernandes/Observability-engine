#**********************************************************************************
#file schema
#    {
#        "day":"*",
#        "start": "21:00:00",
#        "end": "23:59:50"
#    },
enum SilentWeekDayType {
    Any
    BusinessDay
    Weekend
    Holiday
    Sunday
    Monday
    Tuesday
    Thursday
    Friday
    Saturday
}
Class SilentPeriod{
    [SilentWeekDayType] $day
    [string] $start
    [string] $end
    SilentPeriod($item){
        $this.day=[SilentWeekDayType] $item.day
        $this.start=$item.start
        $this.end=$item.end

    }
}