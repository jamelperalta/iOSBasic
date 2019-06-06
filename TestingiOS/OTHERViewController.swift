//
//  OTHERViewController.swift
//  TestingiOS
//
//  Created by Jamel Peralta Coss on 6/4/19.
//  Copyright © 2019 Jamel Peralta. All rights reserved.
//

import UIKit

class OTHERViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // elements
    @IBOutlet weak var tableexample: UITableView!
    
    // instance variables
    var games:  [String] = ["Super Smash Bros Ultimate", "Pokemon Sword", "Pokemon Shield"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setting up the table view
        tableexample.delegate = self
        tableexample.dataSource = self
        //tableexample.rowHeight = UITableView.automaticDimension    //This is for setting the table view to automatic
        tableexample.estimatedRowHeight = 500
        
        // Do any additional setup after loading the view.
    }
    
    // METHODS FOR TABLE DATASOURCE
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return games.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Set the object of the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "otherTableCell", for: indexPath) as! otherTableCell
        
        cell.nameLabel.text = games[indexPath.row]
        
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
