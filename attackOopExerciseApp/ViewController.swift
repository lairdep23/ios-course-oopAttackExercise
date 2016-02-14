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
    
    @IBOutlet weak var restartGameButton: UIButton!
    
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
        
            if !soldier.isAlive {
                printLabel.text = "Broot Won!"
                soldierImage.hidden = true
                restartGameButton.hidden = false
            }
        
            
        } else {
            printLabel.text = "Broot attack was unsuccessful!"
        }
        
        
    }
    
    @IBAction func soldierAttackPressed(sender: AnyObject) {
        
        if broot.attemptAttack(soldier.attackPower) {
            printLabel.text = "Soldier attacked Broot for \(soldier.attackPower) HP"
            
            if !broot.isAlive {
                printLabel.text = "Soldier Won!"
                brootImage.hidden = true
                restartGameButton.hidden = false
            }
            
                    
        } else {
            printLabel.text = "Soldier attack was unsuccessful!"
        }
    }
    
    @IBAction func restartGame(sender: AnyObject) {
        brootImage.hidden = false
        soldierImage.hidden = false
        printLabel.text = "Press Attack to Start"
        restartGameButton.hidden = true
        
        viewDidLoad()
        
    }
    
    

    


}

