//
//  HomeRouter.swift
//  convert
//
//  Created by Sandesh Naik on 13/11/26.
//

import Foundation
import SwiftUI

final class HomeRouter {
    
    @ViewBuilder
    func makeConverterView(for measure: Measures) -> some View {
        switch measure {
        case .Area:
            makeConverterView(AreaConversionModal())
        case .DigitalStorage:
            makeConverterView(DigitalStorageConversionModal())
        case .Duration:
            makeConverterView(DurationConversionModal())
        case .Length:
            makeConverterView(LengthConversionModal())
        case .Pressure:
            makeConverterView(PressureConversionModal())
        case .Speed:
            makeConverterView(SpeedConversionModal())
        case .Temperature:
            makeConverterView(TemperatureConversionModal())
        case .Weight:
            makeConverterView(WeightConversionModal())
        }
    }
    
    private func makeConverterView<T: UnitConversionProtocol>(_ modal: T) -> some View {
        let engine = ConversionEngine(conversionModal: modal)
        let interactor = UnitConverterInteractor(engine: engine)
        let presenter = UnitConverterPresenter(inteacter: interactor)
        return UnitConverter(presenter: presenter)
    }
}
