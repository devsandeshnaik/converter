//
//  SpeedUnit.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

enum SpeedUnit: String, CaseIterable, Unit {
    case metersPerSecond
    case kilometersPerHour
    case milesPerHour
    case knots
    case feetPerSecond
    
    var name: String {
        switch self {
        case .metersPerSecond:
            return "Meters per Second"
        case .kilometersPerHour:
            return "Kilometers per Hour"
        case .milesPerHour:
            return "Miles per Hour"
        case .knots:
            return "Knots"
        case .feetPerSecond:
            return "Feet per Second"
        }
    }
    
    var symbol: String {
        switch self {
        case .metersPerSecond: return "m/s"
        case .kilometersPerHour: return "km/h"
        case .milesPerHour: return "mph"
        case .knots: return "kn"
        case .feetPerSecond: return "ft/s"
        }
    }
}
