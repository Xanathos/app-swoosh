//
//  LeagueVCViewController.swift
//  app-swoosh2
//
//  Created by Christian Torrico on 4/12/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
}
