//
//  ViewController.swift
//  Data Pass
//
//  Created by Khatib Designs on 2/2/19.
//  Copyright © 2019 Khatib Designs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DataTableView: UITableView!
    var data = ["1 - User", "2 - Client", "3 - Parent", "4 - Child"]
    var selection = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.DataTableView.delegate = self
        self.DataTableView.dataSource = self
        self.title = "Parent View"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "childViewSegue" {
            let ChildVC = segue.destination as! ChildViewController
            ChildVC.passedSelection = selection
        }
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
            cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selection = data[indexPath.row]
        self.performSegue(withIdentifier: "childViewSegue", sender: self)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
}
