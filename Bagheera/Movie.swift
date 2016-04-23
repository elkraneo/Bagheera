//
//  Movie.swift
//  Mowgli
//
//  Created by Cristian Diaz on 20/03/16.
//  Copyright © 2016 metodowhite. All rights reserved.
//

import Freddy

public struct Movie {
	public let title: String
	public let overview: String
}

extension Movie: JSONDecodable {
	public init(json value: JSON) throws {
		title = try value.string("title")
		overview = try value.string("overview")
	}
}