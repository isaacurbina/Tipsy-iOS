//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
	
	var billBrain = BillBrain()
	
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
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "calculateTotalPerPerson" {
			if let destinationVC = segue.destination as? ResultsViewController {
				destinationVC.totalPerPerson = billBrain.getTotalPerPerson()
				destinationVC.settings = billBrain.getSettings()
			}
		}
	}
	
	// MARK: - Actions
	@IBAction func tipChanged(_ sender: UIButton) {
		billTextField.endEditing(true)
		billBrain.tipSelected(sender.currentTitle!)
		zeroPctButton.isSelected =  billBrain.isTipSelected(0.0)
		tenPctButton.isSelected = billBrain.isTipSelected(0.1)
		twentyPctButton.isSelected = billBrain.isTipSelected(0.2)
	}
	
	@IBAction func stepperValueChanged(_ sender: UIStepper) {
		billTextField.endEditing(true)
		let stepperValue = Int(sender.value)
		billBrain.stepperChanged(stepperValue)
		splitNumberLabel.text = "\(stepperValue)"
	}
	
	@IBAction func calculatePressed(_ sender: UIButton) {
		let total = Double(billTextField.text ?? "0.0")
		billBrain.setTotal(total!)
		self.performSegue(withIdentifier: "calculateTotalPerPerson", sender: self)
	}
}

