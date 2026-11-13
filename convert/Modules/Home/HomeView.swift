//
//  HomeView.swift
//  convert
//
//  Created by Sandesh Naik on 11/11/26.
//

import SwiftUI

struct HomeView: View {
    
    @State private var presenter: HomePresentor
    @State private var path: [Measures] = []
    
    init(presenter: HomePresentor) {
        self.presenter = presenter
    }
    
    var body: some View {
        NavigationStack(path: $path) {
            List(presenter.measurements) { measure in
                HomeListCell(measure: measure)
                    .onTapGesture {
                        path.append(measure)
                    }
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Unit Converter")
            .navigationDestination(for: Measures.self) { measure in
                presenter.converterView(for: measure)
            }
            .onAppear {
                presenter.loadMeasure()
            }
        }
    }
}

#Preview {
    let interactor = HomeInteractor(model: HomeModel())
    let presentor = HomePresentor(interactor: interactor,
                                  router: HomeRouter())
    HomeView(presenter: presentor)
}
