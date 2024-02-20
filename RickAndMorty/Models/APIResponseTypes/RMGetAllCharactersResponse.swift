//
//  RMGetAllCharactersResponse.swift
//  RickAndMorty
//
//  Created by Rebert Matheus Teixeira on 19/02/24.
//

import Foundation

// MARK: - RMGetAllCharactersResponse
struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count, pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
}
