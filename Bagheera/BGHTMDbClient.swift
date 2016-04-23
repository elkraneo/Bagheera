//
//  BagTMDbClient.swift
//  Mowgli
//
//  Created by Cristian Diaz on 12/03/16.
//  Copyright © 2016 metodowhite. All rights reserved.
//
//	Documentation: http://docs.themoviedb.apiary.io/#configuration
//

import Foundation
import Alamofire
import Freddy
import RxSwift

private let TMDbAPIBaseURL = "https://api.themoviedb.org/3/"
private let TMDbConfiguration = "configuration"

public struct BGHTMDbClient {
	
	private let APIKey: String
	
	public init(APIKey key: String) {
		self.APIKey = key
	}
	
	public func fetchMovies(list: MovieListEndpoint) -> Observable<MovieList> {
		return Observable.create { observer in
			Alamofire.request(.GET, TMDbAPIBaseURL + list.rawValue, parameters: ["api_key": self.APIKey])
				.responseJSON { response in
					
					guard let JSONData = response.data else { return }
					
					do {
						let json = try JSON(data: JSONData)
						let movieList = try MovieList(json: json)
						
						observer.onNext(movieList)
						observer.onCompleted()
					} catch {
						observer.onError(MovieListError.NoData)
						return
					}
			}
			return NopDisposable.instance
		}
	}
}