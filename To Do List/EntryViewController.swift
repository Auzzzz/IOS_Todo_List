//
//  EntryViewController.swift
//  To Do List
//
//  Created by Chris Kelly on 18/12/20.
//

import UIKit

class EntryViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var field: UITextField!
    
    var update: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        field.delegate = self
        
        // Add Bar button programticly
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Save", style: .done, target: self, action: #selector(saveTask))
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        saveTask()
        
        return true
    }
    
    @objc func saveTask() {
        print("0")
        // Make sure there is text in this field & Checking if the text is not empty
        guard let text = field.text, !text.isEmpty else{
            return
        }
        print("1")
        guard let count = UserDefaults().value(forKey: "count") as? Int else{
            return
        }
        
        let newCount = count + 1
        print("2")
        // Save Task to a user default
        UserDefaults().set(newCount, forKey: "count")
        UserDefaults().set(text, forKey: "task_\(newCount)")
        print("3")
        update?()
        print("4")
        navigationController?.popViewController(animated: true)
    }


}
