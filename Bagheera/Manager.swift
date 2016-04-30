//
//  Manager.swift
//  Bagheera
//
//  Created by Cristian Díaz on 24/04/16.
//  Copyright © 2016 metodowhite. All rights reserved.
//

import Foundation

public class Manager {
	
	public static let sharedInstance: Manager = {
		let configuration = "configuration"
		
		return Manager(configuration: configuration)
	}()
	
	public let delegate: SessionDelegate
	
	public init(configuration: String, delegate: SessionDelegate = SessionDelegate()) {
		self.delegate = delegate
		commonInit()
	}
	
	public init?(delegate: SessionDelegate) {
		self.delegate = delegate
		
		//guard delegate === session.delegate else { return nil }
		
		commonInit()
	}
	
	private func commonInit() {

	}
	
	// MARK: - Request
	
	public func request(api: ServiceType) -> Request {
		
		return Request()
	}

}

// MARK: - SessionDelegate

public class SessionDelegate: NSObject {
	
}