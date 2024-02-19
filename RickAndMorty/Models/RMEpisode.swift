//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Rebert Matheus Teixeira on 02/01/24.
//

import Foundation

struct RMEpisode: Codable {
    let id: Int
    let name: String
    let airDate: String
    let episode: String
    let chracters: [String]
    let url: String
    let creaedAt: String
}
