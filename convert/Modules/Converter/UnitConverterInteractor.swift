//
//  UnitConverterInteractor.swift
//  convert
//
//  Created by Sandesh Naik on 13/11/26.
//

import Foundation
import Combine

final class UnitConverterInteractor<T: UnitConversionProtocol> {
    private var engine: ConversionEngine<T>
    
    @Published var units: [T.UnitType] = []
    @Published var convertedValue: Double = 0.0
    
    init(engine: ConversionEngine<T>) {
        self.engine = engine
        units = engine.conversionModal.units
    }
    
    func convert(_ value: Double, from: T.UnitType, to: T.UnitType) -> Double {
        engine.conversionModal.convert(value, from: from, to: to)
    }
}
