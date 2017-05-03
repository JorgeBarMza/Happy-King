//
//  MenuViewController.swift
//  Happy King
//
//  Created by Jorge Barrios on 7/31/15.
//  Copyright (c) 2015 Jorge Barrios. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var jugarButton: UIButton!
    
    @IBOutlet weak var reglasButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        roundCorners(jugarButton)
        roundCorners(reglasButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func exitSegue(_ sender: UIStoryboardSegue){
    }
    
    func roundCorners(_ buttonName: UIButton){
        buttonName.layer.cornerRadius = 10
    }
}

