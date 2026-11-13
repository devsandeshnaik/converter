//
//  HomePresentor.swift
//  convert
//
//  Created by Sandesh Naik on 11/11/26.
//

import Foundation
import Combine
import SwiftUI

@Observable
class HomePresentor {
    private let interactor: HomeInteractor
    private let router: HomeRouter
    
    var measurements: [Measures] = []
    
    private var cancellable: Set<AnyCancellable> = []
    
    init(interactor: HomeInteractor,
         router: HomeRouter) {
        self.interactor = interactor
        self.router = router
        
        interactor.model.$measurements
            .assign(to: \.measurements, on: self)
            .store(in: &cancellable)
    }
    
    func loadMeasure() {
        interactor.loadMeasures()
    }
    
    func converterView(for measure: Measures) -> some View {
        router.makeConverterView(for: measure)
    }
}
