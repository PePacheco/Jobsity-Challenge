//
//  SeriesListViewController.swift
//  Jobsity-Challenge
//
//  Created by pedro.pacheco on 12/07/22.
//

import UIKit

class SeriesListViewController: UIViewController {
    
    private let viewModel: SeriesListViewModel
    
    init(viewModel: SeriesListViewModel) {
        self.viewModel = viewModel
        super.init(nibName: String(describing: Self.self), bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
