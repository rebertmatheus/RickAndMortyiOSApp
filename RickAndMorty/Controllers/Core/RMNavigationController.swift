//
//  RMNavigationViewController.swift
//  RickAndMorty
//
//  Created by Rebert Matheus Teixeira on 03/01/24.
//

import UIKit

final class RMNavigationController: UINavigationController {
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        
        self.navigationBar.prefersLargeTitles = true
        
        guard let vc = rootViewController as? RMTabBarViewControllerProtocol else {
            return
        }
        
        self.tabBarItem = UITabBarItem(title: vc.rmTitle, image: UIImage(systemName: vc.rmBarIcon) , tag: vc.rmTag)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
