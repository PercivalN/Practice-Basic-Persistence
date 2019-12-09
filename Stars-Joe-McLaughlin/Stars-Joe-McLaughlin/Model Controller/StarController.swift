//
//  StarController.swift
//  Stars-Joe-McLaughlin
//
//  Created by Percy Ngan on 12/7/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import Foundation

class StarController {

	private(set) var stars: [Star] = []

	@discardableResult func createStar(named name: String, withDistance distance: Double) -> Star {

		let star = Star(name: name, distance: distance)
		stars.append(star)
		return star
	}
}
