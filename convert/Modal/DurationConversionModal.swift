//
//  DurationConversionModal.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

final class DurationConversionModal: UnitConversionProtocol {
    
    typealias UnitType = DurationUnit
    
    // Foundation's UnitDuration stops at hours, so larger units are defined relative to the base unit (seconds).
    // Month and year use the average Gregorian year of 365.2425 days.
    private static let days = UnitDuration(symbol: "d", converter: UnitConverterLinear(coefficient: 86_400))
    private static let weeks = UnitDuration(symbol: "wk", converter: UnitConverterLinear(coefficient: 604_800))
    private static let months = UnitDuration(symbol: "mo", converter: UnitConverterLinear(coefficient: 2_629_746))
    private static let years = UnitDuration(symbol: "yr", converter: UnitConverterLinear(coefficient: 31_556_952))
    
    func convert(_ value: Double, from: DurationUnit, to: DurationUnit) -> Double {
        guard from != to else { return value }
        return convertUnit(value, from: foundationUnit(for: from), to: foundationUnit(for: to))
    }
    
    /// Maps a `DurationUnit` case to its Foundation `UnitDuration` equivalent.
    private func foundationUnit(for unit: DurationUnit) -> UnitDuration {
        switch unit {
        case .nanosecond: return .nanoseconds
        case .microsecond: return .microseconds
        case .millisecond: return .milliseconds
        case .second: return .seconds
        case .minute: return .minutes
        case .hour: return .hours
        case .day: return Self.days
        case .week: return Self.weeks
        case .month: return Self.months
        case .year: return Self.years
        }
    }
    
    private func convertUnit(_ value: Double, from: UnitDuration, to: UnitDuration) -> Double {
        let measure = Measurement(value: value, unit: from)
        return measure.converted(to: to).value
    }
}
