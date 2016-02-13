//
//  Character.swift
//  attackOopExerciseApp
//
//  Created by Evan Laird on 2/13/16.
//  Copyright © 2016 Evan Laird. All rights reserved.
//

import Foundation


class Character {
    
    private var _hp: Int = 100
    private var _attackPower: Int = 10
    
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    
    var hp: Int {
            return _hp
        
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
            return false
            } else {
                return true
            }
        }
    }
    
    init(startingHp: Int, attackPower:Int) {
        self._attackPower = attackPower
        self._hp = startingHp
        
    }
    
    func attemptAttack(attackPower: Int) ->Bool {
        self._hp -= attackPower
        
        return true
    }
    
    
    }
    
