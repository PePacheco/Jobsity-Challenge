//
//  GetAllPokemonsUseCase.swift
//  Jobsity-Challenge
//
//  Created by pedro.pacheco on 12/07/22.
//

import Foundation
import RxSwift

protocol GetAllPokemonsUseCase {
    func execute() -> Observable<PokemonResult>
}

class GetAllPokemonsUseCaseImpl: GetAllPokemonsUseCase {
    
    init() {
        
    }
    
    func execute() -> Observable<PokemonResult> {
        return PokemonRepository().getAllPokemons()
    }
}

class GetAllPokemonsUseCaseMock: GetAllPokemonsUseCase {
    
    var response: PokemonResult?
    
    init() {
        
    }
    
    func execute() -> Observable<PokemonResult> {
        if let response = response {
            return .just(response)
        }
        return .error(HTTPError.invalidResponse)
    }
}

