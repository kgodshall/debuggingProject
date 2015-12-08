//
//  GameModel.swift
//  DebuggingProjectAdvanced
//
//  Created by Kira Godshall on 11/22/2015.
//  Copyright (c) 2015 Kira Godshall. All rights reserved.
//

import Foundation

class GameModel {
    var computerRandomNumber:Int
    init() {
        computerRandomNumber = GameModel.getRandomNumber()
    }
    func resetComputerRandomNumber() {
        computerRandomNumber = GameModel.getRandomNumber()
    }
    //returns correct, is higher
    func makeGuess(userGuess:Int)->(Bool,Bool) {
        if (computerRandomNumber == userGuess) {
            return(true,false)
        } else {
            //if userGuess is higher than computerRandomNumber, then isHigher = true
            let isHigher = userGuess > computerRandomNumber
            return(false,isHigher)
        }
    }
    //MARK: class function
    class func getRandomNumber() -> Int {
        let randomNumber = Int(arc4random_uniform(10)) + 1
        return randomNumber
    }
}