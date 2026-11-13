//
//  PressureConversionModal.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

final class PressureConversionModal: UnitConversionProtocol {
    
    typealias UnitType = PressureUnit
    
    // Foundation has no atmosphere or torr units, so define them relative to the base unit (pascals).
    private static let atmospheres = UnitPressure(symbol: "atm", converter: UnitConverterLinear(coefficient: 101_325))
    private static let torr = UnitPressure(symbol: "Torr", converter: UnitConverterLinear(coefficient: 101_325.0 / 760.0))
    
    func convert(_ value: Double, from: PressureUnit, to: PressureUnit) -> Double {
        guard from != to else { return value }
        return convertUnit(value, from: foundationUnit(for: from), to: foundationUnit(for: to))
    }
    
    /// Maps a `PressureUnit` case to its Foundation `UnitPressure` equivalent.
    private func foundationUnit(for unit: PressureUnit) -> UnitPressure {
        switch unit {
        case .pascal: return .newtonsPerMetersSquared
        case .kilopascal: return .kilopascals
        case .bar: return .bars
        case .millibar: return .millibars
        case .psi: return .poundsForcePerSquareInch
        case .atmosphere: return Self.atmospheres
        case .torr: return Self.torr
        case .mmHg: return .millimetersOfMercury
        }
    }
    
    private func convertUnit(_ value: Double, from: UnitPressure, to: UnitPressure) -> Double {
        let measure = Measurement(value: value, unit: from)
        return measure.converted(to: to).value
    }
}
