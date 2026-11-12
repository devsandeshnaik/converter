//
//  TemperatureConversionModal.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//
import Foundation

final class TemperatureConversionModal: UnitConversionProtocol {
    
    typealias Unit = TemperatureUnit
    
    func convert(_ value: Double, from: TemperatureUnit, to: TemperatureUnit) -> Double{
        return convertUnit(value, from: foundationUnit(for: from), to: foundationUnit(for: to))
    }
    
    /// Maps a `TemperatureUnit` case to its Foundation `UnitTemperature` equivalent.
    private func foundationUnit(for unit: TemperatureUnit) -> UnitTemperature {
        switch unit {
        case .celsius: return .celsius
        case .fahrenheit: return .fahrenheit
        case .kelvin: return .kelvin
        }
    }
    
    private func convertUnit(_ value: Double, from: UnitTemperature, to: UnitTemperature) -> Double {
        let measure = Measurement(value: value, unit: from)
        return measure.converted(to: to).value
        
    }
}
