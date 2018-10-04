//
//  ViewController.swift
//  Todoey
//
//  Created by Sean Bendall on 01/10/2018.
//  Copyright © 2018 Sean Bendall. All rights reserved.
//

import UIKit

class TableView: UITableViewController {
    
    let itemArray = ["Buy Your Mum", "Have cheetos", "eat minecraft"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //MARK - Tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK - TableView Delegate Methods
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType == .none
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

