//
//  ViewController.swift
//  Proverbe Sans Fin
//
//  Created by Alexandre Impinna on 02/08/2017.
//  Copyright © 2017 Alexandre Impinna. All rights reserved.
//

import UIKit
import Hue



class ViewController: UIViewController {

    @IBOutlet var swipeCredits: UISwipeGestureRecognizer!
    @IBOutlet var changeProverbeTapGesture: UITapGestureRecognizer!
    @IBOutlet weak var proverbeLabel: UILabel!
    
    var numeroProverbe = 0
    let proverbes = Proverbe()
    var proverbeLayer = CALayer()
    var layerNumber = 0
    

    
    override func viewDidLoad() {
        super.viewDidLoad() 
        
        
    }
    
    @IBAction func swipeToCredits(_ sender: UISwipeGestureRecognizer) {
    
    performSegue(withIdentifier: "SegueToCredits", sender: (Any).self)
        
    }

    @IBAction func changeProverbeAction(_ sender: UITapGestureRecognizer) {
        
        randomBackground()
        randomProverbe()

    }
    
    func randomProverbe() {
        
        numeroProverbe = Int(arc4random_uniform(UInt32(proverbes.proverbe.count)))
        proverbeLabel.text = proverbes.proverbe[numeroProverbe]
        
    }
    
    func randomBackground() {
        
        var random1 = CGFloat(randomFloat(min: 0.0, max: 1))
        var random2 = CGFloat(randomFloat(min: 0.0, max: 1))
        var random3 = CGFloat(randomFloat(min: 0.0, max: 1))
        var random4 = CGFloat(randomFloat(min: 0.0, max: 1))
        var random5 = CGFloat(randomFloat(min: 0.0, max: 1))
        var random6 = CGFloat(randomFloat(min: 0.0, max: 1))
        
        // Détermine la couleur de la cellule
        let colorTop = UIColor(red: CGFloat(random1), green: CGFloat(random2), blue: CGFloat(random3), alpha: 1.0)
        let colorDown = UIColor(red: CGFloat(random4), green: CGFloat(random5), blue: CGFloat(random6), alpha: 1.0)
        
        let gradient = [colorTop, colorDown].gradient { gradient in
            gradient.locations = [0.0, 1.0]
            return gradient
        }
        
        gradient.frame = self.view.bounds
        
        if layerNumber == 0 {
            view.layer.insertSublayer(gradient, at: 0)
            layerNumber += 1
        } else if layerNumber == 1 {
            view.layer.replaceSublayer((view.layer.sublayers?[0])!, with: gradient)
        }
        
    }
    
    func randomFloat(min: Float, max: Float) -> Float {
        return (Float(arc4random()) / 0xFFFFFFFF) * (max - min) + min
    }
    


}

