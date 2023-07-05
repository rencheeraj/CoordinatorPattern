//
//  MainCoordinator.swift
//  Coordinator Pattern
//
//  Created by Rencheeraj Mohan on 26/06/23.
//

import Foundation
import UIKit

class MainCoordinator : Coordinator{
    var childCoordinators = [Coordinator]()
    
    var navigationController : UINavigationController
    
    init(navigationController: UINavigationController) {
//        self.childCoordinators = childCoordinators
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    func buySubscription() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    func createSubscription() {
        let vc = CreateViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
