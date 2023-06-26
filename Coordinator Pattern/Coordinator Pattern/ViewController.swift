//
//  ViewController.swift
//  Coordinator Pattern
//
//  Created by Rencheeraj Mohan on 26/06/23.
//

import UIKit

class ViewController: UIViewController, StoryBoarded {
    weak var coordinator : MainCoordinator?
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buyNavAct(_ sender: Any) {
        coordinator?.buySubscription()
    }
    @IBAction func createNavAct(_ sender: Any) {
        coordinator?.createSubscription()
    }
    
}

