//
//  CreditsViewController.swift
//  Proverbe Sans Fin
//
//  Created by Alexandre Impinna on 02/08/2017.
//  Copyright © 2017 Alexandre Impinna. All rights reserved.
//

import UIKit

class CreditsViewController: UIViewController {
    
    @IBOutlet weak var meLeft: UILabel!
    @IBOutlet weak var meRight: UILabel!
    @IBOutlet weak var placeLeft: UILabel!
    @IBOutlet weak var placeRight: UILabel!
    @IBOutlet weak var octocatLeft: UIImageView!
    @IBOutlet weak var octocatRight: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func meButton(_ sender: UIButton) {
        
        if meLeft.isHidden == true {
            meLeft.isHidden = false
        } else {
            meLeft.isHidden = true
        }

        if meRight.isHidden == true {
            meRight.isHidden = false
        } else {
            meRight.isHidden = true
        }
        
    }
    
    @IBAction func placeButton(_ sender: Any) {
    
        if placeLeft.isHidden == true {
            placeLeft.isHidden = false
        } else {
            placeLeft.isHidden = true
        }
        
        if placeRight.isHidden == true {
            placeRight.isHidden = false
        } else {
            placeRight.isHidden = true
        }

    }

    @IBAction func githubButton(_ sender: UIButton) {
        
        if octocatLeft.isHidden == true {
            octocatLeft.isHidden = false
        } else {
            octocatLeft.isHidden = true
        }
        
        if octocatRight.isHidden == true {
            octocatRight.isHidden = false
        } else {
            octocatRight.isHidden = true
        }
        
    }
    
    
}
