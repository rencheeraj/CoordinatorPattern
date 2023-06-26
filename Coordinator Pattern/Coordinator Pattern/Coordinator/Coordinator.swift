//
//  Coordinator.swift
//  Coordinator Pattern
//
//  Created by Rencheeraj Mohan on 26/06/23.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators : [Coordinator] { get set }
    var navigationController : UINavigationController { get set }
    func start()
}
