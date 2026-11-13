//
//  DigitalStorageConversionModal.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

final class DigitalStorageConversionModal: UnitConversionProtocol {
    
    typealias UnitType = DigitalStorageUnit
    
    func convert(_ value: Double, from: DigitalStorageUnit, to: DigitalStorageUnit) -> Double {
        guard from != to else { return value }
        return convertUnit(value, from: foundationUnit(for: from), to: foundationUnit(for: to))
    }
    
    /// Maps a `DigitalStorageUnit` case to its Foundation `UnitInformationStorage` equivalent.
    /// Uses decimal (SI) prefixes, e.g. 1 KB = 1,000 bytes.
    private func foundationUnit(for unit: DigitalStorageUnit) -> UnitInformationStorage {
        switch unit {
        case .bit: return .bits
        case .byte: return .bytes
        case .kilobyte: return .kilobytes
        case .megabyte: return .megabytes
        case .gigabyte: return .gigabytes
        case .terabyte: return .terabytes
        case .petabyte: return .petabytes
        }
    }
    
    private func convertUnit(_ value: Double, from: UnitInformationStorage, to: UnitInformationStorage) -> Double {
        let measure = Measurement(value: value, unit: from)
        return measure.converted(to: to).value
    }
}
