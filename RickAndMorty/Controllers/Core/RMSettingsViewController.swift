//
//  RMSettingsViewController.swift
//  RickAndMorty
//
//  Created by Rebert Matheus Teixeira on 02/01/24.
//

import UIKit

final class RMSettingsViewController: UIViewController, RMTabBarViewControllerProtocol {
    
    let rmTitle: String = "Settings"
    let rmBarIcon: String = "gear"
    let rmTag: Int = 4

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        navigationItem.largeTitleDisplayMode = .automatic
        title = rmTitle
    }
}
