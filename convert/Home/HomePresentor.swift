//
//  HomePresentor.swift
//  convert
//
//  Created by Sandesh Naik on 11/11/26.
//

import Foundation
import Combine

@Observable
class HomePresentor {
    private var interactor: HomeInteractor
    
    var measurements: [Measures] = []
    
    private var cancellable: Set<AnyCancellable> = []
    
    init(interactor: HomeInteractor) {
        self.interactor = interactor
        
        interactor.model.$measurements
            .assign(to: \.measurements, on: self)
            .store(in: &cancellable)
    }
    
    func loadMeasure() {
        interactor.loadMeasures()
    }
    
}
