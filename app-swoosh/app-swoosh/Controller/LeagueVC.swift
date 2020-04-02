//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Pravir Ahuja on 02/04/20.
//  Copyright © 2020 Priyank Ahuja. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player : Player!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        player = Player()
    }
    
    @IBOutlet weak var nextBtn: borderButton!
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    
    @IBAction func onCoedsTapped(_ sender: Any) {
        selecLeagueType(leagueType: "coeds")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selecLeagueType(leagueType: "womens")
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selecLeagueType(leagueType: "mens")
    }
    
    func selecLeagueType(leagueType: String){
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
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
