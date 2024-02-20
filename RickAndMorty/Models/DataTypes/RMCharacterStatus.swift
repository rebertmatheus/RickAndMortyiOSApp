//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Rebert Matheus Teixeira on 17/02/24.
//

import Foundation

enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case unknow = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknow:
            return "Unknown"
        }
    }
}
