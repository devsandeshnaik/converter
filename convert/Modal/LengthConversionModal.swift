//
//  LengthConversionModal.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

final class LengthConversionModal: UnitConversionProtocol {
    
    typealias UnitType = LengthUnit
    
    func convert(_ value: Double, from: LengthUnit, to: LengthUnit) -> Double {
        guard from != to else { return value }
        return convertUnit(value, from: foundationUnit(for: from), to: foundationUnit(for: to))
    }
    
    /// Maps a `LengthUnit` case to its Foundation `UnitLength` equivalent.
    private func foundationUnit(for unit: LengthUnit) -> UnitLength {
        switch unit {
        case .millimeter: return .millimeters
        case .centimeter: return .centimeters
        case .meter: return .meters
        case .kilometer: return .kilometers
        case .inch: return .inches
        case .foot: return .feet
        case .yard: return .yards
        case .mile: return .miles
        }
    }
    
    private func convertUnit(_ value: Double, from: UnitLength, to: UnitLength) -> Double {
        let measure = Measurement(value: value, unit: from)
        return measure.converted(to: to).value
    }
}
