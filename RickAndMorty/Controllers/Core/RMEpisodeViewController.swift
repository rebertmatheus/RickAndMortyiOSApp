//
//  RMEpisodeViewController.swift
//  RickAndMorty
//
//  Created by Rebert Matheus Teixeira on 02/01/24.
//

import UIKit

final class RMEpisodeViewController: UIViewController, RMTabBarViewControllerProtocol {
    
    let rmTitle: String = "Episodes"
    let rmBarIcon: String = "tv"
    let rmTag: Int = 3

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        navigationItem.largeTitleDisplayMode = .automatic
        title = rmTitle
    }
}
