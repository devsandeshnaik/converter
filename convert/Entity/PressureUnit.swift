//
//  PressureUnit.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

enum PressureUnit: String, CaseIterable, Unit, Identifiable {
    case pascal
    case kilopascal
    case bar
    case millibar
    case psi
    case atmosphere
    case torr
    case mmHg
    
    var name: String {
        switch self {
        case .pascal:
            return "Pascal"
        case .kilopascal:
            return "Kilopascal"
        case .bar:
            return "Bar"
        case .millibar:
            return "Millibar"
        case .psi:
            return "PSI"
        case .atmosphere:
            return "Atmosphere"
        case .torr:
            return "Torr"
        case .mmHg:
            return "Millimeter of Mercury"
        }
    }
    
    var symbol: String {
        switch self {
        case .pascal: return "Pa"
        case .kilopascal: return "kPa"
        case .bar: return "bar"
        case .millibar: return "mbar"
        case .psi: return "psi"
        case .atmosphere: return "atm"
        case .torr: return "Torr"
        case .mmHg: return "mmHg"
        }
    }
    
    var id: String { rawValue }
}
