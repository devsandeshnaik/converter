//
//  HomeModel.swift
//  convert
//
//  Created by Sandesh Naik on 11/11/26.
//

import Foundation
import Combine

final class HomeModel {
    @Published var measurements: [Measures] = []
    
    func loadMeasurements() {
        measurements = Measures.allCases
    }
}
