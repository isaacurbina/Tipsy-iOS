//
//  BillBrain.swift
//  Tipsy
//
//  Created by Isaac Urbina on 11/18/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct BillBrain {
	
	var bill = Bill()
	
	mutating func tipSelected(_ tipPercentage: String) {
		switch tipPercentage {
		case "0%" :
			bill.tip = 0.0
			
		case "10%":
			bill.tip = 0.1
			
		case "20%" :
			bill.tip = 0.2
			
		default:
			print("value not recognized \(tipPercentage)")
			bill.tip = 0.0
		}
	}
	
	mutating func stepperChanged(_ people: Int) {
		bill.people = people
	}
	
	func isTipSelected(_ tip: Double) -> Bool {
		return bill.tip == tip
	}
	
	mutating func setTotal(_ total: Double) {
		bill.total = total
	}
	
	func getTotalPerPerson() -> String {
		let totalPerPerson = bill.getTotalPerPerson()
		return totalPerPerson
	}
	
	func getSettings() -> String {
		let tipPercentage = Int(bill.tip * 100)
		return "Split between \(bill.people), with \(tipPercentage)% tip."
	}
}
