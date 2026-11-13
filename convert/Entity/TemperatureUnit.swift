//
//  TemperatureUnit.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

enum TemperatureUnit: String, CaseIterable, Unit, Identifiable {
    case celsius
    case fahrenheit
    case kelvin
    
    var name: String {
        switch self {
        case .celsius:
            return "Celsius"
        case .fahrenheit:
            return "Fahrenheit"
        case .kelvin:
            return "Kelvin"
        }
    }
    
    var symbol: String {
        switch self {
        case .celsius: return "°C"
        case .fahrenheit: return "°F"
        case .kelvin: return "K"
        }
    }
    
    var id: String { rawValue }
}
