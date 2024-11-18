//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
	
	// MARK: - Outlets
	@IBOutlet weak var billTextField: UITextField!
	
	@IBOutlet weak var zeroPctButton: UIButton!
	
	@IBOutlet weak var tenPctButton: UIButton!
	
	@IBOutlet weak var twentyPctButton: UIButton!
	
	@IBOutlet weak var splitNumberLabel: UILabel!
	
	// MARK: - UIViewController
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	
	// MARK: - Actions
	@IBAction func tipChanged(_ sender: UIButton) {
		let tipPercentage: Double
		switch sender.currentTitle ?? nil {
		case "0%" :
			zeroPctButton.isSelected = true
			tenPctButton.isSelected = false
			twentyPctButton.isSelected = false
			tipPercentage = 0.0
			
		case "10%":
			zeroPctButton.isSelected = false
			tenPctButton.isSelected = true
			twentyPctButton.isSelected = false
			tipPercentage = 0.1
			
		case "20%" :
			zeroPctButton.isSelected = false
			tenPctButton.isSelected = false
			twentyPctButton.isSelected = true
			tipPercentage = 0.2
			
		default:
			print("value not recognized")
			tipPercentage = 0.0
		}
		print("tipPercentage: \(tipPercentage)")
	}
	
	@IBAction func stepperValueChanged(_ sender: UIStepper) {
	}
	
	@IBAction func calculatePressed(_ sender: UIButton) {
	}
	
}

