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

	// This is a computed property
	private var persistentFileURL: URL? {
		let fileManager = FileManager.default
		// Every app has its own document folder (its sandbox)
		guard let documents = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }

		return documents.appendingPathComponent("stars.plist")
	}

	// Doing it like this makes sure that the StarController is doing all the work on the model instead of calling the function in viewDidLoad in the StarsViewController
	init() {
		loadFromPersistentStore()
	}

	@discardableResult func createStar(named name: String, withDistance distance: Double) -> Star {

		let star = Star(name: name, distance: distance)
		stars.append(star)
		saveToPersistentStore()
		return star
	}

	func listStars() -> String {
		var output = ""
		for star in stars {
			output += "\(star.name) is \(star.distanceDescription).\n"
		}
		return output
	}

	private func saveToPersistentStore() {
		guard let url = persistentFileURL else { return }

		do {
			let encoder = PropertyListEncoder()
			let data = try encoder.encode(stars)
			try data.write(to: url)
		} catch {
			NSLog("Error saving stars data: \(error)")
		}
	}

	private func loadFromPersistentStore() {
		let fileManager = FileManager.default
		guard let url = persistentFileURL, fileManager.fileExists(atPath: url.path) else { return }

		do {
			let data = try Data(contentsOf: url)
			let decoder = PropertyListDecoder()
			stars = try decoder.decode([Star].self, from: data)
		} catch {
			NSLog("Error loading stars data: \(error)")
		}
	}
}
