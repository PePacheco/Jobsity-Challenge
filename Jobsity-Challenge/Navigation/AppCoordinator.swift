//
//  AppCoordinator.swift
//  Jobsity-Challenge
//
//  Created by pedro.pacheco on 12/07/22.
//

import UIKit

class AppCoordinator: AppCoorinating {

    var children: [Coordinator]
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        self.children = []
    }
    
    func start() {
        let viewModel = SeriesListViewModel(coordinator: self)
        let seriesListViewController = SeriesListViewController(viewModel: viewModel)
        navigationController.setViewControllers([seriesListViewController], animated: true)
    }
    
    func showSerieEpisodes() {
        //
    }
    
}
