//
//  BLUEViewController.swift
//  TestingiOS
//
//  Created by Jamel Peralta Coss on 6/4/19.
//  Copyright © 2019 Jamel Peralta. All rights reserved.
//

import UIKit

class BLUEViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    

    // elements
    @IBOutlet weak var collectionTable: UICollectionView!
    
    //variables
    var games:  [String] = ["Super Smash Bros Ultimate", "Pokemon Sword", "Pokemon Shield", "Testing1", "Testing2", "Testing3", "Testing4", "Testing5", "Testing6", "Testing7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionTable.delegate = self
        collectionTable.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    //methods for the collection table
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return games.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Set the object of the cell
        let cell = collectionTable.dequeueReusableCell(withReuseIdentifier: "blueCollectionCell", for: indexPath) as! blueCollectionCell
        
        cell.gamelabel.text = games[indexPath.row]
        
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
