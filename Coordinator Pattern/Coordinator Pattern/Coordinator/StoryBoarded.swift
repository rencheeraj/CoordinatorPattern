//
//  StoryBoarded.swift
//  Coordinator Pattern
//
//  Created by Rencheeraj Mohan on 26/06/23.
//

import Foundation
import UIKit

protocol StoryBoarded {
    static func instantiate() -> Self
}
extension StoryBoarded where Self : UIViewController{
    static func instantiate() -> Self{
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
