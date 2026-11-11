//
//  Measures.swift
//  convert
//
//  Created by Sandesh Naik on 11/11/26.
//

import Foundation


enum Measures: Int, CaseIterable, Identifiable {
    case Length = 0
    case Weight = 1
    case Speed = 2
    case Area = 3
    case Duration = 4
    case DigitalStorage = 5
    case Pressure = 6
    case Temprature = 7
    
    // MARK: Properties
    var id: Int { rawValue }
    
    var name: String {
        switch self {
        case .Length: "Lenght"
        case .Weight: "Weight"
        case .Speed: "Speed"
        case .Area: "Area"
        case .Duration: "Duration"
        case .DigitalStorage: "Digital Storage"
        case .Pressure: "Pressure"
        case .Temprature: "Temprature"
        }
    }
}

