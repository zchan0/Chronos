//
//  Extensions.swift
//  Chronos
//
//  Created by Cencen Zheng on 2018/7/12.
//  Copyright © 2018 Cencen Zheng. All rights reserved.
//

import Foundation

extension Int {
    var seconds: Measurement<UnitDuration> {
        return Measurement(value: Double(self), unit: UnitDuration.seconds)
    }
    
    var minutes: Measurement<UnitDuration> {
        return Measurement(value: Double(self), unit: UnitDuration.minutes)
    }
    
    var hours: Measurement<UnitDuration> {
        return Measurement(value: Double(self), unit: UnitDuration.hours)
    }
    
    var days: Measurement<UnitDuration> {
        return Measurement(value: Double(self) * 24, unit: UnitDuration.hours)
    }
}

extension Double {
    var seconds: Measurement<UnitDuration> {
        return Measurement(value: self, unit: UnitDuration.seconds)
    }
    
    var minutes: Measurement<UnitDuration> {
        return Measurement(value: self, unit: UnitDuration.minutes)
    }
    
    var hours: Measurement<UnitDuration> {
        return Measurement(value: self, unit: UnitDuration.hours)
    }
    
    var days: Measurement<UnitDuration> {
        return Measurement(value: self * 24, unit: UnitDuration.hours)
    }
}

extension Date {
    static func + (lhs: Date, rhs: Measurement<UnitDuration>) -> Date {
        let afterSeconds: TimeInterval = rhs.converted(to: UnitDuration.seconds).value
        return lhs.addingTimeInterval(afterSeconds)
    }
    
    static func - (lhs: Date, rhs: Measurement<UnitDuration>) -> Date {
        
        let beforeSeconds: TimeInterval = rhs.converted(to: UnitDuration.seconds).value
        return Date(timeInterval: -beforeSeconds, since: lhs)
    }
}
