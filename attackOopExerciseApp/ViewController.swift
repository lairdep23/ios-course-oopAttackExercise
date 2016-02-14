//
//  ViewController.swift
//  attackOopExerciseApp
//
//  Created by Evan Laird on 2/11/16.
//  Copyright © 2016 Evan Laird. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var printLabel: UILabel!
    
    @IBOutlet weak var brootImage: UIImageView!
    
    @IBOutlet weak var soldierImage: UIImageView!
    
    var soldier: Soldier!
    var broot: Enemy!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        broot = Enemy(name: "Broot", hp: 100, attackPower: 10)
        
        soldier = Soldier(name: "Soldier", hp: 100, attackPower: 10)
        
    }
    
    @IBAction func brootAttackPressed(sender: AnyObject) {
        
        if soldier.attemptAttack(broot.attackPower) {
            printLabel.text = "Broot attacked Soldier for \(broot.attackPower) HP"
            
        
            
        } else {
            printLabel.text = "Broot attack was unsuccessful!"
        }
        
        
    }
    
    @IBAction func soldierAttackPressed(sender: AnyObject) {
        
        if broot.attemptAttack(soldier.attackPower) {
            printLabel.text = "Soldier attacked Broot for \(soldier.attackPower) HP"
            
        
            
                    
        } else {
            printLabel.text = "Soldier attack was unsuccessful!"
        }
        
        if !broot.isAlive {
            printLabel.text = "Killed Broot!"
            brootImage.hidden = true
        }
        
        if !soldier.isAlive {
            printLabel.text = "Killed Soldier!"
            soldierImage.hidden = true
        }
        
        
    }
    
    
    

    


}

