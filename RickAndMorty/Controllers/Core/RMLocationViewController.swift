//
//  RMLocationViewController.swift
//  RickAndMorty
//
//  Created by Rebert Matheus Teixeira on 02/01/24.
//

import UIKit

final class RMLocationViewController: UIViewController, RMTabBarViewControllerProtocol {
    
    let rmTitle: String = "Locations"
    let rmBarIcon: String = "globe"
    let rmTag: Int = 2

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        navigationItem.largeTitleDisplayMode = .automatic
        title = rmTitle
    }
}
