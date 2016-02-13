//
//  SoldierClass.swift
//  attackOopExerciseApp
//
//  Created by Evan Laird on 2/13/16.
//  Copyright © 2016 Evan Laird. All rights reserved.
//

import Foundation

class Soldier: Character {
    
    private var _name = "Soldier"
    
    var name: String {
        get{
            return _name
        }
    }
    
    private var _numberOfWins = Int()
    
    var numberOfWins: Int {
        return _numberOfWins
    }
    
    convenience init(name: String, hp: Int, attackPower: Int) {
        
        self.init(startingHp: hp , attackPower: attackPower)
        
        _name = name
    }
    
    
}







