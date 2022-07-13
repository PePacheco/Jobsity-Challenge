//
//  SeriesListViewController.swift
//  Jobsity-Challenge
//
//  Created by pedro.pacheco on 12/07/22.
//

import UIKit
import RxSwift

class SeriesListViewController: UIViewController {
    
    private let viewModel: SeriesListViewModel
    private let disposeBag: DisposeBag
    
    init(viewModel: SeriesListViewModel) {
        self.viewModel = viewModel
        self.disposeBag = DisposeBag()
        super.init(nibName: String(describing: Self.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let repo = PokemonRepository()
        repo.getAllPokemons().subscribe { pokemon in
            print(pokemon)
        }.disposed(by: disposeBag)
    }
    
}
