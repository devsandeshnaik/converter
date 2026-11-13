//
//  UnitConversion.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

protocol UnitConversionProtocol {
    associatedtype UnitType: Unit & CaseIterable & Hashable & Identifiable
    var units: [UnitType] { get }
    func convert(_ value: Double,from: UnitType, to: UnitType) -> Double
}

extension UnitConversionProtocol {
    var units: [UnitType] { Array(UnitType.allCases) }
}


