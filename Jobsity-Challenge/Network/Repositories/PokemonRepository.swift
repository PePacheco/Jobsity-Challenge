//
//  PokemonRepository.swift
//  Jobsity-Challenge
//
//  Created by pedro.pacheco on 12/07/22.
//

import Foundation
import RxSwift

class PokemonRepository {
    
    init() {}
    
    func getAllPokemons() -> Observable<PokemonResult> {
        let observable: Observable<PokemonResult> = HTTPClient.shared.fetchData(url: "https://pokeapi.co/api/v2/pokemon?limit=151")
        return observable
    }
}
