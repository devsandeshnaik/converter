//
//  SpeedConversionModal.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

final class SpeedConversionModal: UnitConversionProtocol {
    
    typealias UnitType = SpeedUnit
    
    /// Foundation has no feet-per-second unit, so define one relative to the base unit (m/s).
    private static let feetPerSecond = UnitSpeed(symbol: "ft/s", converter: UnitConverterLinear(coefficient: 0.3048))
    
    func convert(_ value: Double, from: SpeedUnit, to: SpeedUnit) -> Double {
        guard from != to else { return value }
        return convertUnit(value, from: foundationUnit(for: from), to: foundationUnit(for: to))
    }
    
    /// Maps a `SpeedUnit` case to its Foundation `UnitSpeed` equivalent.
    private func foundationUnit(for unit: SpeedUnit) -> UnitSpeed {
        switch unit {
        case .metersPerSecond: return .metersPerSecond
        case .kilometersPerHour: return .kilometersPerHour
        case .milesPerHour: return .milesPerHour
        case .knots: return .knots
        case .feetPerSecond: return Self.feetPerSecond
        }
    }
    
    private func convertUnit(_ value: Double, from: UnitSpeed, to: UnitSpeed) -> Double {
        let measure = Measurement(value: value, unit: from)
        return measure.converted(to: to).value
    }
}
