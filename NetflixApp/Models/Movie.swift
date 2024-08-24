//
//  Movie.swift
//  NetflixApp
//
//  Created by Mahsa on 8/24/24.
//

import Foundation

struct TrendinMoviesResponse{
    let results = [Movie]()
}

struct Movie {
    let id : Int
    let media_type : String?
    let original_language : String?
    let original_title :  String?
    let poster_path :  String?
    let overview : String?
    let vote_count :  Int?
    let vote_average : Double?
    let release_date : String?
    
    
}

