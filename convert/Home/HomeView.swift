//
//  HomeView.swift
//  convert
//
//  Created by Sandesh Naik on 11/11/26.
//

import SwiftUI

struct HomeView: View {
    
    @State private var presenter: HomePresentor
    
    init(presenter: HomePresentor) {
        self.presenter = presenter
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(presenter.measurements){ measure in
                    HomeListCell(measure: measure)
                        .listRowSeparator(.hidden)
                }
            }
            .listStyle(.plain)
            .onAppear {
                presenter.loadMeasure()
            }
            .navigationTitle("Unit Converter")
        }
    }
}

#Preview {
    let interactor = HomeInteractor(model: HomeModel())
    let presentor = HomePresentor(interactor: interactor)
    HomeView(presenter: presentor)
}
