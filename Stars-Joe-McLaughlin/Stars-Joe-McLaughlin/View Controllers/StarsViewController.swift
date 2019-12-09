//
//  StarsViewController.swift
//  Stars-Joe-McLaughlin
//
//  Created by Percy Ngan on 12/7/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import UIKit

class StarsViewController: UIViewController {

	@IBOutlet weak var nameTextField: UITextField!
	@IBOutlet weak var distanceTextField: UITextField!
	@IBOutlet weak var tableView: UITableView!

	let starController = StarController()

	override func viewDidLoad() {
		super.viewDidLoad()

	}

	@IBAction func printStars(_ sender: Any) {

	}
	@IBAction func createStar(_ sender: Any) {

		guard let name = nameTextField.text,
			let distanceString = distanceTextField.text,
			!name.isEmpty,
			!distanceString.isEmpty,
			let distance = Double(distanceString) else { return } // If any of the conditions from line 29 to line 33 is not true then return.
		starController.createStar(named: name, withDistance: distance)
		nameTextField.text = ""
		distanceTextField.text = ""
		nameTextField.becomeFirstResponder()
		tableView.reloadData()
	}

}

extension StarsViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 0
	}

	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		return UITableViewCell()
	}


}

