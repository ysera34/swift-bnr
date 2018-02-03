//
//  ViewController.swift
//  iTahDoodle
//
//  Created by Yoon on 2018. 2. 3..
//  Copyright © 2018년 Yoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var itemTextField: UITextField!
    @IBOutlet var tableView: UITableView!
    
    let todoList = TodoList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = todoList
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addButtonPressed(_ sender: UIButton) {
//        print("Add to-do item: \(itemTextField.text)")
        guard let todo = itemTextField.text else {
            return
        }
        todoList.add(todo)
        tableView.reloadData()
    }
}

