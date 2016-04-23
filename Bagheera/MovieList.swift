//
//  MovieList.swift
//  Mowgli
//
//  Created by Cristian Diaz on 20/03/16.
//  Copyright © 2016 metodowhite. All rights reserved.
//

import Freddy

public enum MovieListEndpoint: String {
	case Latest = "movie/latest"
	case Upcoming = "movie/upcoming"
	case NowPlaying = "movie/now_playing"
	case Popular = "movie/popular"
	case TopRated = "movie/top_rated"
}

public enum MovieListError: ErrorType {
	case NoResponse
	case NoData
}

public struct MovieList {
	public let page: Int
	public let results: Array<Movie>
	public let totalPages: Int
	public let totalResults: Int
}

extension MovieList: JSONDecodable {
	public init(json value: JSON) throws {
		page = try value.int("page")
		results = try value.arrayOf("results", type: Movie.self)
		totalPages = try value.int("total_pages")
		totalResults = try value.int("total_results")
	}
}