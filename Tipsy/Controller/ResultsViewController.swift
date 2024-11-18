//
//  ViewController.swift
//  Tipsy
//
//  Created by Isaac Urbina on 11/18/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

	// MARK: - Outlets
	@IBOutlet weak var totalLabel: UILabel!
	
	@IBOutlet weak var settingsLabel: UILabel!
	
	// MARK: - UIViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
	
	// MARK: - Actions
	@IBAction func recalculatePressed(_ sender: UIButton) {
	}
}