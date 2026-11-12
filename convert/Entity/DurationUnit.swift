//
//  DurationUnit.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

enum DurationUnit: String, CaseIterable, Unit {
    case nanosecond
    case microsecond
    case millisecond
    case second
    case minute
    case hour
    case day
    case week
    case month
    case year
    
    var name: String {
        switch self {
        case .nanosecond:
            return "Nanosecond"
        case .microsecond:
            return "Microsecond"
        case .millisecond:
            return "Millisecond"
        case .second:
            return "Second"
        case .minute:
            return "Minute"
        case .hour:
            return "Hour"
        case .day:
            return "Day"
        case .week:
            return "Week"
        case .month:
            return "Month"
        case .year:
            return "Year"
        }
    }
    
    var symbol: String {
        switch self {
        case .nanosecond: return "ns"
        case .microsecond: return "μs"
        case .millisecond: return "ms"
        case .second: return "s"
        case .minute: return "min"
        case .hour: return "h"
        case .day: return "d"
        case .week: return "wk"
        case .month: return "mo"
        case .year: return "yr"
        }
    }
}
