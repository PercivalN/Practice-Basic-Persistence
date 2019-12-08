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

	override func viewDidLoad() {
		super.viewDidLoad()

	}

	@IBAction func printStars(_ sender: Any) {
	}
	@IBAction func createStar(_ sender: Any) {
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

