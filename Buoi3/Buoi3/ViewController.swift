//
//  ViewController.swift
//  Buoi3
//
//  Created by Tuấn on 6/8/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topGreenView: UIView!
    
    @IBOutlet weak var topLeftLabel: UILabel!
    
    @IBOutlet weak var yellowView: UIView!
    
    @IBOutlet weak var rightLabel: UILabel!
    
    @IBOutlet weak var bigView: UIView!
    
    @IBOutlet weak var bottomGreenView: UIView!
    
    @IBOutlet weak var bottomLeftLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topGreenView.layer.borderWidth = 3
        topGreenView.layer.borderColor = UIColor.blue.cgColor
        
        topLeftLabel.center.x = topGreenView.bounds.width / 2
        topLeftLabel.center.y = topGreenView.bounds.height / 2
        
        yellowView.layer.borderWidth = 3
        yellowView.layer.borderColor = UIColor.green.cgColor
        
        rightLabel.center.x = yellowView.bounds.width / 2
        rightLabel.center.y = yellowView.bounds.height / 2
        
        bigView.layer.borderWidth = 1
        
        bottomGreenView.layer.borderWidth = 3
        bottomGreenView.layer.borderColor = UIColor.blue.cgColor
        
        bottomGreenView.center.x = bigView.bounds.width / 2
        bottomGreenView.center.y = bigView.bounds.height / 2
        
        bottomLeftLabel.center.x = bottomGreenView.bounds.width / 2
        bottomLeftLabel.center.y = bottomGreenView.bounds.height / 2

       
        
    }


}

