//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Rebert Matheus Teixeira on 02/01/24.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    private func setUpTabs() {
        let charactersVC = RMCharacterViewController()
        let episodesVC = RMEpisodeViewController()
        let locationsVC = RMLocationViewController()
        let settingsVC = RMSettingsViewController()
        
        let navCharacters = RMNavigationController(rootViewController: charactersVC)
        let navEpisodes = RMNavigationController(rootViewController: episodesVC)
        let navLocations = RMNavigationController(rootViewController: locationsVC)
        let navSettings = RMNavigationController(rootViewController: settingsVC)
        
        setViewControllers([navCharacters, navLocations, navEpisodes, navSettings], animated: true)
    }
}

