//
//  Star.swift
//  Stars-Joe-McLaughlin
//
//  Created by Percy Ngan on 12/7/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import Foundation

struct Star: Codable {
	var name: String
	var distance: Double

	var distanceDescription: String {
		return "\(distance) light years away"
	}
}
