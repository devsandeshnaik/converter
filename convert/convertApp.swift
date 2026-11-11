//
//  convertApp.swift
//  convert
//
//  Created by Sandesh Naik on 11/11/26.
//

import SwiftUI

@main
struct convertApp: App {
    var body: some Scene {
        WindowGroup {
            let homeInterector = HomeInteractor(model: HomeModel())
            let presenter = HomePresentor(interactor: homeInterector)
            HomeView(presenter: presenter)
        }
    }
}
