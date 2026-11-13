//
//  ConversionEngine.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation
import Combine

final class ConversionEngine<T: UnitConversionProtocol> {
    var conversionModal: T
    
    @Published var output: Double = 0.0
    
    init( conversionModal: T) {
        self.conversionModal = conversionModal
    }

    func convert(value: Double, from: T.UnitType, to: T.UnitType) {
        output = conversionModal.convert(value, from: from, to: to)
    }
    
}
