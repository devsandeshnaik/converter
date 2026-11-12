//
//  LengthUnit.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

enum LengthUnit: String, CaseIterable, Unit {
    case millimeter
    case centimeter
    case meter
    case kilometer
    case inch
    case foot
    case yard
    case mile
    
    var name: String {
        switch self {
        case .millimeter:
            return "Millimeter"
        case .centimeter:
            return "Centimeter"
        case .meter:
            return "Meter"
        case .kilometer:
            return "Kilometer"
        case .inch:
            return "Inch"
        case .foot:
            return "Foot"
        case .yard:
            return "Yard"
        case .mile:
            return "Mile"
        }
    }
    
    var symbol: String {
        switch self {
        case .millimeter: return "mm"
        case .centimeter: return "cm"
        case .meter: return "m"
        case .kilometer: return "km"
        case .inch: return "in"
        case .foot: return "ft"
        case .yard: return "yd"
        case .mile: return "mi"
        }
    }
}
