//
//  PokemonTests.swift
//  Jobsity-Challenge
//
//  Created by pedro.pacheco on 12/07/22.
//

import XCTest
import RxSwift
@testable import Jobsity_Challenge

class PokemonTests: XCTestCase {
    
    let disposeBag = DisposeBag()

    override func setUp() {
        
    }
    
    override func tearDown() {
        
    }
    
    func testPokemonFetch() {
        let useCase = GetAllPokemonsUseCaseMock()
        useCase.response = PokemonResult(results: [Pokemon(name: "", url: "")])
        useCase.execute().subscribe(onNext: { pokemon in
            XCTAssert(pokemon.results.count == 1)
        }).disposed(by: disposeBag)
    }
    
    func testPokemonFetchWithError() {
        let useCase = GetAllPokemonsUseCaseMock()
        useCase.execute().subscribe( onError: { error in
            XCTAssert(true)
        }).disposed(by: disposeBag)
    }
    
}
