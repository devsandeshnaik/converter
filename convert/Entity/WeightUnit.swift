//
//  WeightUnit.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

enum WeightUnit: String, CaseIterable, Unit, Identifiable {
    case milligram
    case gram
    case kilogram
    case metricTon
    case ounce
    case pound
    case stone
    case ton
    
    var name: String {
        switch self {
        case .milligram:
            return "Milligram"
        case .gram:
            return "Gram"
        case .kilogram:
            return "Kilogram"
        case .metricTon:
            return "Metric Ton"
        case .ounce:
            return "Ounce"
        case .pound:
            return "Pound"
        case .stone:
            return "Stone"
        case .ton:
            return "Ton"
        }
    }
    
    var symbol: String {
        switch self {
        case .milligram: return "mg"
        case .gram: return "g"
        case .kilogram: return "kg"
        case .metricTon: return "t"
        case .ounce: return "oz"
        case .pound: return "lb"
        case .stone: return "st"
        case .ton: return "ton"
        }
    }
    
    var id: String { rawValue }
}
