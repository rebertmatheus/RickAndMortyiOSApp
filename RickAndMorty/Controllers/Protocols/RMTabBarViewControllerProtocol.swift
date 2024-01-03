//
//  RMTabBarControllerProtocol.swift
//  RickAndMorty
//
//  Created by Rebert Matheus Teixeira on 03/01/24.
//

import Foundation

protocol RMTabBarViewControllerProtocol {
    var rmTitle: String {get}
    var rmBarIcon: String  {get}
    var rmTag: Int {get}
}
