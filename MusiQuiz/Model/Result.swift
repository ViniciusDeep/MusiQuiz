//
//  Result.swift
//  MusiQuiz
//
//  Created by Vinicius Mangueira on 27/06/19.
//  Copyright © 2019 Vinicius Mangueira. All rights reserved.
//

import Foundation

struct SearchResult: Decodable {
    let resultCount: Int
    let results: [Result]
    
}
struct Result: Decodable {
    let trackName: String
    let primaryGenreName: String
    let artworkUrl100: String
    let screenshotUrls: [String]
    let averageUserRating: Float?
}
