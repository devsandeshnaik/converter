//
//  AreaConversionModal.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

final class AreaConversionModal: UnitConversionProtocol {
    
    typealias Unit = AreaUnit
    
    func convert(_ value: Double, from: AreaUnit, to: AreaUnit) -> Double {
        guard from != to else { return value }
        return convertUnit(value, from: foundationUnit(for: from), to: foundationUnit(for: to))
    }
    
    /// Maps an `AreaUnit` case to its Foundation `UnitArea` equivalent.
    private func foundationUnit(for unit: AreaUnit) -> UnitArea {
        switch unit {
        case .squareMillimeter: return .squareMillimeters
        case .squareCentimeter: return .squareCentimeters
        case .squareMeter: return .squareMeters
        case .squareKilometer: return .squareKilometers
        case .hectare: return .hectares
        case .squareInch: return .squareInches
        case .squareFoot: return .squareFeet
        case .squareYard: return .squareYards
        case .acre: return .acres
        case .squareMile: return .squareMiles
        }
    }
    
    private func convertUnit(_ value: Double, from: UnitArea, to: UnitArea) -> Double {
        let measure = Measurement(value: value, unit: from)
        return measure.converted(to: to).value
    }
}
