//
//  BagheeraTMDb.swift
//  Bagheera
//
//  Created by Cristian Diaz on 12/03/16.
//  Copyright © 2016 metodowhite. All rights reserved.
//
//	Documentation: http://docs.themoviedb.apiary.io/#configuration
//

import Alamofire
import Freddy


public struct BagheeraTMDb {
	
	let TMDbAPIBaseURL = "https://api.themoviedb.org/3/"
	let TMDbConfiguration = "configuration"
	let TMDbAPIKey = "api_key"
	let APIKey: String
	
	public init(APIKey key: String) {
		self.APIKey = key
	}
	
	public func fetchMovies(list: MovieListEndpoint, completion:(MovieList) -> ()) {
		Alamofire.request(.GET, TMDbAPIBaseURL + list.rawValue, parameters: [TMDbAPIKey: self.APIKey])
			.responseJSON { response in
				
				guard let JSONData = response.data else { return }
				
				do {
					let json = try JSON(data: JSONData)
					let movieList = try MovieList(json: json)
					
					completion(movieList)
				} catch {
					//TODO: handle error
					return
				}
		}
	}
	
}