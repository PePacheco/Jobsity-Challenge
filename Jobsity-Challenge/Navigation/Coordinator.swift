//
//  Coordinator.swift
//  Jobsity-Challenge
//
//  Created by pedro.pacheco on 12/07/22.
//

import UIKit

public protocol Coordinator: AnyObject {
    var children: [Coordinator] { get }
    var navigationController: UINavigationController { get set }
    func start()
}
