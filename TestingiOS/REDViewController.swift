//
//  REDViewController.swift
//  TestingiOS
//
//  Created by Jamel Peralta Coss on 6/4/19.
//  Copyright © 2019 Jamel Peralta. All rights reserved.
//

import UIKit

class REDViewController: UIViewController {

    // Elements
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        firstView.alpha = 1
        secondView.alpha = 0
        thirdView.alpha = 0
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchPanel(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            firstView.alpha = 1
            secondView.alpha = 0
            thirdView.alpha = 0
        }
        else if sender.selectedSegmentIndex == 1 {
            firstView.alpha = 0
            secondView.alpha = 1
            thirdView.alpha = 0
        }
        else {
            firstView.alpha = 0
            secondView.alpha = 0
            thirdView.alpha = 1
        }
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
