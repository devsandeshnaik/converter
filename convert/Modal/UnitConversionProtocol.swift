//
//  UnitConversion.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation

protocol UnitConversionProtocol {
    associatedtype Unit
    func convert(_ value: Double,from: Unit, to: Unit) -> Double
}



