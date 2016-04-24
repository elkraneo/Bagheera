//
//  BagheeraTMDb+RxSwift.swift
//  Bagheera
//
//  Created by Cristian Díaz on 24/04/16.
//  Copyright © 2016 metodowhite. All rights reserved.
//

import Alamofire
import Freddy
import RxSwift

extension BagheeraTMDb {
	
	public func fetchMovies(list: MovieListEndpoint) -> Observable<MovieList> {
		return Observable.create { observer in
			Alamofire.request(.GET, self.TMDbAPIBaseURL + list.rawValue, parameters: [self.TMDbAPIKey: self.APIKey])
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