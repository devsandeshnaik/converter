//
//  UnitConverterPresenter.swift
//  convert
//
//  Created by Sandesh Naik on 12/11/26.
//

import Foundation
import SwiftUI

@Observable
final class UnitConverterPresenter<T: UnitConversionProtocol> {
    private let interacter: UnitConverterInteractor<T>
    
    @ObservationIgnored let units: [T.UnitType]
    
    var input: String = ""
    var from: T.UnitType
    var to: T.UnitType
    
    init(inteacter: UnitConverterInteractor<T>) {
        self.interacter = inteacter
        units = inteacter.units
        from = units[0]
        to = units.count > 1 ? units[1] : units[0]
    }
    
    var output: String {
        guard let v = Double(input) else { return "" }
        return interacter.convert(v, from: from, to: to)
            .formatted(.number.precision(.significantDigits(0...5)))
    }
    
}
