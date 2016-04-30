//
//  BagheeraTMDb.swift
//  Bagheera
//
//  Created by Cristian Diaz on 12/03/16.
//  Copyright © 2016 metodowhite. All rights reserved.
//
//	Documentation: http://docs.themoviedb.apiary.io/#configuration
//



public struct TMDb: Service {
	
	public enum Endpoint: String, ServiceEndpoint {
		case Latest = "movie/latest"
		case Upcoming = "movie/upcoming"
		case NowPlaying = "movie/now_playing"
		case Popular = "movie/popular"
		case TopRated = "movie/top_rated"
		
		public func description() -> ServiceType {
			return .TMDb
		}
	}
	
	public let serviceType: ServiceType
	public let APIBaseURL = "https://api.themoviedb.org/3/"
	public let APIKey: String
	
	static let APIStringKey = "api_key"
	
	
	public init(APIKey key: String) {
		self.serviceType =  .TMDb
		self.APIKey = key
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	func fetchMovies(list: Endpoint, completion:(MovieList) -> ()) {
//		Alamofire.request(.GET, APIBaseURL + list.rawValue, parameters: [TMDb.APIStringKey: self.APIKey])
//			.responseJSON { response in
//				
//				guard let JSONData = response.data else { return }
//				
//				do {
//					let json = try JSON(data: JSONData)
//					let movieList = try MovieList(json: json)
//					
//					completion(movieList)
//				} catch {
//					//TODO: handle error
//					return
//				}
//		}
//	}
	
}

