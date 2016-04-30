//
//  Bagheera.swift
//  Bagheera
//
//  Created by Cristian Díaz on 23/04/16.
//  Copyright © 2016 metodowhite. All rights reserved.
//

public func setup(services: [Service]) {
	for service in services {
		print("📺: \(service)")
	}
}

public func request(endpoint: ServiceEndpoint) {
	print("\(endpoint.description()): \(endpoint)")
}
