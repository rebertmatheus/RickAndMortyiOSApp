//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Rebert Matheus Teixeira on 02/01/24.
//

import UIKit

final class RMCharacterViewController: UIViewController, RMTabBarViewControllerProtocol {
    
    let rmTitle: String = "Characters"
    let rmBarIcon: String = "person"
    let rmTag: Int = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationItem.largeTitleDisplayMode = .automatic
        title = rmTitle
        
        let request = RMRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        
        print(request.url)
        
        RMService.shared.execute(request, expecting: RMCharacter.self) { result in
            switch result {
            case .success(<#T##RMCharacter#>)
        }
        }
    }
}
