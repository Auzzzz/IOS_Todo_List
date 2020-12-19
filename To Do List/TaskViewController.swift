//
//  TaskViewController.swift
//  To Do List
//
//  Created by Chris Kelly on 18/12/20.
//

import UIKit

class TaskViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    var task: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = task
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "delete", style: .done, target: self, action: #selector (deleteTask))
    }
    

    @objc func deleteTask() {
        
        
    }

}
