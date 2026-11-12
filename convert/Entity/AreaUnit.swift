//
//  AreaUnit.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

enum AreaUnit: String, CaseIterable, Unit {
    case squareMillimeter
    case squareCentimeter
    case squareMeter
    case squareKilometer
    case hectare
    case squareInch
    case squareFoot
    case squareYard
    case acre
    case squareMile
    
    var name: String {
        switch self {
        case .squareMillimeter:
            return "Square Millimeter"
        case .squareCentimeter:
            return "Square Centimeter"
        case .squareMeter:
            return "Square Meter"
        case .squareKilometer:
            return "Square Kilometer"
        case .hectare:
            return "Hectare"
        case .squareInch:
            return "Square Inch"
        case .squareFoot:
            return "Square Foot"
        case .squareYard:
            return "Square Yard"
        case .acre:
            return "Acre"
        case .squareMile:
            return "Square Mile"
        }
    }
    
    var symbol: String {
        switch self {
        case .squareMillimeter: return "mm²"
        case .squareCentimeter: return "cm²"
        case .squareMeter: return "m²"
        case .squareKilometer: return "km²"
        case .hectare: return "ha"
        case .squareInch: return "in²"
        case .squareFoot: return "ft²"
        case .squareYard: return "yd²"
        case .acre: return "ac"
        case .squareMile: return "mi²"
        }
    } 
}
