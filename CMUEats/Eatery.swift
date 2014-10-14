//
//  Eatery.swift
//  CMUEats
//
//  Created by Noah Goetz on 10/11/14.
//  Copyright (c) 2014 Noah Goetz. All rights reserved.
//

import UIKit

enum day {
    case Sunday
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
}

typealias time = (day, Int, Int);
typealias timeDiff = (Int, Int, Int);

//enum Hour {
//    case Open(time);
//    case Close(time);
//}
let Sunday = day.Sunday
let Monday = day.Monday
let Tuesday = day.Tuesday
let Wednesday = day.Wednesday
let Thursday = day.Thursday
let Friday = day.Friday
let Saturday = day.Saturday

class Eatery: NSObject {
    
    var name : String = "Generic Name"
    var openHours : [time] = [] //sorted
    var closeHours : [time] = [] //sorted
    var pinned : Bool = false
    var calendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)
    var location : String = "";
    
    init(_name: String, _location: String, _openHours: [time], _closeHours: [time]) {
        self.name = _name
        self.location = _location
        self.openHours = _openHours
        self.closeHours = _closeHours
        //set is open or closed
    }

    func timeInMin(t : time) -> Int{
        var (d, h, m) : (day, Int, Int) = t
        switch d {
        case day.Sunday:
            var dn = 0
            return (dn * 24 + h) * 60 + m
        case day.Monday:
            var dn = 1
            return (dn * 24 + h) * 60 + m
        case day.Tuesday:
            var dn = 2
            return (dn * 24 + h) * 60 + m
        case day.Wednesday:
            var dn = 3
            return (dn * 24 + h) * 60 + m
        case day.Thursday:
            var dn = 4
            return (dn * 24 + h) * 60 + m
        case day.Friday:
            var dn = 5
            return (dn * 24 + h) * 60 + m
        case day.Saturday:
            var dn = 6
            return (dn * 24 + h) * 60 + m
        }
    }
    
    func numbToDay(day: Int) -> day {
        switch day {
        case 0:
            return .Sunday
        case 1:
            return .Monday
        case 2:
            return .Tuesday
        case 3:
            return .Wednesday
        case 4:
            return .Thursday
        case 5:
            return .Friday
        case _:
            return .Saturday
        }

    }
    
    func currentTime() -> time {
        var date = NSDate()
        var calendar = NSCalendar.currentCalendar()
        var components = calendar.components(.CalendarUnitHour | .CalendarUnitMinute, fromDate: date)
        var componentsweek = calendar.components(.CalendarUnitWeekday, fromDate: date)
        var day = componentsweek.weekday
        var hour = components.hour
        var minutes = components.minute
        return (numbToDay(day-1), hour, minutes) as time
        //testing
        //return (numbToDay(day-1), 19, 31) as time
    }

    func timeBetween(t1 : time, t2: time) -> Int {
        var d = (timeInMin(t2) - timeInMin(t1)) % 10080
        if (d < 0) {
            d = 10080 + d
        }
        return d
    }
    
    func minDiffToTime(mindiff : Int) -> timeDiff {
        var day = (mindiff / 1440)
        var hour = (mindiff % 1440) / 60
        var min = ((mindiff % 1440) % 60)
        return (day, hour, min)
    }
    
    //binary search for next time
    func getNextTimeD(hours : [time], afterHour: time) -> timeDiff {
        var intHours = hours.map({self.timeBetween(afterHour, t2: $0)})
        var minTime = intHours.reduce(10080, combine: { (t1, t2) -> Int in
            if (t1 > 0 && t1 < t2) {
                return t1
            } else {
                return t2
            }
        })
        return self.minDiffToTime(minTime);
    }
    
    func getTimeUntilNextOpen() -> timeDiff {
        return self.getNextTimeD(self.openHours, afterHour: self.currentTime())
    }

    func getTimeUntilNextClose() -> timeDiff {
        return self.getNextTimeD(self.closeHours, afterHour: self.currentTime())
    }
    
    func timeDiffToMin (t :timeDiff) -> Int {
        var (d, h, m) = t
        return (((d * 24) + h) * 60) + m
    }
    
    func isOpen() -> Bool {
        var openMin = self.timeDiffToMin(self.getTimeUntilNextOpen())
        var closeMin = self.timeDiffToMin(self.getTimeUntilNextClose())
        return openMin > closeMin
    }
}
