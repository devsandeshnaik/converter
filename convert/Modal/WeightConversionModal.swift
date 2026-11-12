//
//  WeightConversionModal.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

final class WeightConversionModal: UnitConversionProtocol {
    
    typealias Unit = WeightUnit
    
    // Foundation's imperial mass units use rounded coefficients (e.g. 1 lb = 0.453592 kg),
    // so define them with the exact international definitions in kilograms.
    private static let ounces = UnitMass(symbol: "oz", converter: UnitConverterLinear(coefficient: 0.028349523125))
    private static let pounds = UnitMass(symbol: "lb", converter: UnitConverterLinear(coefficient: 0.45359237))
    private static let stones = UnitMass(symbol: "st", converter: UnitConverterLinear(coefficient: 6.35029318))
    /// US short ton (2,000 lb).
    private static let shortTons = UnitMass(symbol: "ton", converter: UnitConverterLinear(coefficient: 907.18474))
    
    func convert(_ value: Double, from: WeightUnit, to: WeightUnit) -> Double {
        guard from != to else { return value }
        return convertUnit(value, from: foundationUnit(for: from), to: foundationUnit(for: to))
    }
    
    /// Maps a `WeightUnit` case to its Foundation `UnitMass` equivalent.
    private func foundationUnit(for unit: WeightUnit) -> UnitMass {
        switch unit {
        case .milligram: return .milligrams
        case .gram: return .grams
        case .kilogram: return .kilograms
        case .metricTon: return .metricTons
        case .ounce: return Self.ounces
        case .pound: return Self.pounds
        case .stone: return Self.stones
        case .ton: return Self.shortTons
        }
    }
    
    private func convertUnit(_ value: Double, from: UnitMass, to: UnitMass) -> Double {
        let measure = Measurement(value: value, unit: from)
        return measure.converted(to: to).value
    }
}
