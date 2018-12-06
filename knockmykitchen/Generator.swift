//
//  Generator.swift
//  knockmykitchen
//
//  Created by Sailaja Sakthivel on 12/5/18.
//  Copyright © 2018 Sailaja Sakthivel. All rights reserved.
//


import Foundation

struct DummyRecipe {
    let country: String
    let name: String
    let creationDate: Int
    let id: UUID
    let description: String
}

enum DummyCountry: String, CaseIterable {
    case italian
    case mexican
    
    var randomRecipe: String {
        switch self {
        case .italian:
            return ["spaghetti", "mostaccoli", "linguini"].randomElement()!
        case .mexican:
            return ["tacos", "burritos", "fajitas"].randomElement()!
        }
    }
    
    var randomDescription: String {
        switch self {
        case .italian:
            return ["spaghetti", "mostaccoli", "linguini"].randomElement()!
        case .mexican:
            return ["tacos", "burritos", "fajitas"].randomElement()!
        }
    }
}

struct Generator {
    static func generateRecipe(_ numberOfRecipe: Int) -> [DummyRecipe] {
        return (1...numberOfRecipe).lazy.map { _ in
            let country = DummyCountry.allCases.randomElement()!
            let recipe = DummyRecipe(
                country: country.rawValue.capitalized,
                name: country.randomRecipe,
                creationDate: Int.random(in: 1960...2018),
                id: UUID(),
                description: country.randomDescription
            )
            return recipe
        }
    }
}
