//
//  HomeInteractor.swift
//  convert
//
//  Created by Sandesh Naik on 11/11/26.
//

import Foundation
class HomeInteractor {
   
    let model: HomeModel
    
    init(model: HomeModel) {
        self.model = model
    }
    
    func loadMeasures() {
        model.loadMeasurements()
    }
}
