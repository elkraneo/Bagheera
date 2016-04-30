//
//  ViewController.swift
//  Example
//
//  Created by Cristian Díaz on 23/04/16.
//  Copyright © 2016 metodowhite. All rights reserved.
//

import UIKit
import Bagheera

class ViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		Bagheera.setup([TMDb(APIKey: "4552c3fa51f05ffc09b73912931a5406")])
		Bagheera.request(TMDb.Endpoint.Latest)
	}
	
}