//
//  Service.swift
//  Bagheera
//
//  Created by Cristian Díaz on 30/04/16.
//  Copyright © 2016 metodowhite. All rights reserved.
//

import Foundation

public protocol Service {
	static var enpoint: ServiceEndpoint.Type { get }
	var serviceType: ServiceType { get }
	var APIBaseURL: String { get }
	var APIKey: String { get }
	
	init(APIKey key: String)
}

public enum ServiceType {
	case TMDb, TraktTV
}

public protocol ServiceEndpoint {
	 func description() -> ServiceType
}
