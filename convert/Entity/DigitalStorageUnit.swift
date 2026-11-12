//
//  DigitalStorageUnit.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

enum DigitalStorageUnit: String, CaseIterable, Unit {
    case bit
    case byte
    case kilobyte
    case megabyte
    case gigabyte
    case terabyte
    case petabyte
    
    var name: String {
        switch self {
        case .bit:
            return "Bit"
        case .byte:
            return "Byte"
        case .kilobyte:
            return "Kilobyte"
        case .megabyte:
            return "Megabyte"
        case .gigabyte:
            return "Gigabyte"
        case .terabyte:
            return "Terabyte"
        case .petabyte:
            return "Petabyte"
        }
    }
    
    var symbol: String {
        switch self {
        case .bit: return "bit"
        case .byte: return "B"
        case .kilobyte: return "KB"
        case .megabyte: return "MB"
        case .gigabyte: return "GB"
        case .terabyte: return "TB"
        case .petabyte: return "PB"
        }
    }
}
