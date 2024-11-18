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
		print("tip: \(bill.tip)")
	}
	
	mutating func stepperChanged(_ people: Int) {
		bill.people = people
		print("people: \(bill.people)")
	}
	
	func isTipSelected(_ tip: Double) -> Bool {
		return bill.tip == tip
	}
	
	mutating func calculate(_ total: Double) {
		bill.total = total
		let totalPerPerson = bill.getTotalPerPerson()
		print("total: \(bill.total)")
		print("totalPerPerson: \(totalPerPerson)")
	}
}
