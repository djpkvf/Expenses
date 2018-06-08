//
//  ExpenseListViewController.swift
//  Expenses
//
//  Created by Dominic Pilla on 6/6/18.
//  Copyright © 2018 Dominic Pilla. All rights reserved.
//

import UIKit

class ExpenseListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let dateFormatter = DateFormatter()
    
    var expenses: [Expense] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dateFormatter.dateFormat = "MMMM d, yyyy HH:mm"
        
        expenses = [Expense(title: "Dinner", amount: 32.50, date: dateFormatter.date(from: "June 1, 2018 18:30")!),
                    Expense(title: "Office Supplies", amount: 59.34, date: dateFormatter.date(from: "May 30, 2018 12:17")!),
                    Expense(title: "Uber", amount: 16.23, date: dateFormatter.date(from: "May 30, 2018 11:43")!),
                    Expense(title: "Coffee", amount: 3.95, date: dateFormatter.date(from: "May 29, 2018 8:45")!)]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return expenses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expenseCell", for: indexPath) as! ExpensesTableViewCell
        
        cell.title.text = expenses[indexPath.row].title
        cell.amount.text = String(format: "$%.02f", expenses[indexPath.row].amount)
        cell.date.text = dateFormatter.string(from: expenses[indexPath.row].date)
        
        return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
