//
//  Expense.swift
//  Expenses
//
//  Created by Dominic Pilla on 6/6/18.
//  Copyright © 2018 Dominic Pilla. All rights reserved.
//

import Foundation

class Expense {
    var title: String
    var amount: Double
    var date: Date
    
    init(title: String, amount: Double, date: Date) {
        self.title = title
        self.amount = amount
        self.date = date
    }
}
