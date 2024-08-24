//
//  APICaller.swift
//  NetflixApp
//
//  Created by Mahsa on 8/19/24.
//

import Foundation

struct Constants {
    static let API_Key =  "1f25a6c2e1de8367669d6b96d7a74ce0"
    static let baseURl = "https://api.themoviedb.org"
}


class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies( completion: @escaping(String)-> Void ){
        
        guard let url = URL(string: "\(Constants.baseURl)/3/trending/movie/day?api_key=\(Constants.API_Key)")
                else
        {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) {data , _ , error in
            guard let data = data , error == nil else {
                return
            }
            do {
                let results = try JSONDecoder().decode(TrendinMoviesResponse.self, from: data)
                print(results)
            }catch {
                print(error.localizedDescription)
            }
         
        }
        task.resume()
    }
    
}


