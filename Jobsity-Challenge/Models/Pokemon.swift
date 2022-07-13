//
//  Pokemon.swift
//  Jobsity-Challenge
//
//  Created by pedro.pacheco on 12/07/22.
//

import Foundation

struct PokemonResult: Codable {
    let results: [Pokemon]
}

struct Pokemon: Codable {
    let name: String
    let url: String
}
