//
//  LeagueVCViewController.swift
//  app-swoosh2
//
//  Created by Christian Torrico on 4/12/20.
//  Copyright © 2020 Christian Torrico. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.isEnabled = false
        player = Player()
    }
    
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(league: "mens")
    }
    
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(league: "womens")
    }
    
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(league: "coed")
    }
    
    func selectLeague(league: String){
        player.desiredLeague = league
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
