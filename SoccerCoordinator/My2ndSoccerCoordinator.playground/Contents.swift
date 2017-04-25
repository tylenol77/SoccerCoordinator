//: Playground - noun: a place where people can play

import UIKit
// Player's data
//
//  main.swift
//  Test
//
//  Created by mac on 2017/4/25.
//  Copyright © 2017年 James. All rights reserved.
//

import Foundation
// Create player data
var player1 = ["name": "Joe Smith", "height": 42, "experienced": true, "guardian": "Jim and Jan Smith"] as [String : Any]
var player2 = ["name": "Jill Tanner", "height": 36, "experienced": true, "guardian": "Ciara Tanner"] as [String : Any]
var player3 = ["name": "Bill Bon", "height": 43, "experienced": true, "guardian": "Sara and Jenny Bon"] as [String : Any]
var player4 = ["name": "Eva Gordon", "height": 45, "experienced": false, "guardian": "Wendy and Mike Gordon"] as [String : Any]
var player5 = ["name": "Matt Gill", "height": 40, "experienced": false, "guardian": "Charles and Sylvia Gill"] as [String : Any]
var player6 = ["name": "Kimmy Stein", "height": 41, "experienced": false, "guardian": "Bill and Hillary Stein"] as [String : Any]
var player7 = ["name": "Sammy Adams", "height": 45, "experienced": false, "guardian": "Jeff Adams"] as [String : Any]
var player8 = ["name": "Karl Saygan", "height": 42, "experienced": true, "guardian": "Heather Biedsoe"] as [String : Any]
var player9 = ["name": "Suzane Greenberg", "height": 44, "experienced": true, "guardian": "Henrietta Dumas"] as [String : Any]
var player10 = ["name": "Sal Dall", "height": 41, "experienced": false, "guardian": "Gala Dail"] as [String : Any]
var player11 = ["name": "Joe Kavalier", "height": 39, "experienced": false, "guardian": "Sam and Elaine Kavaller"] as [String : Any]
var player12 = ["name": "Ben Finkeistein", "height": 44, "experienced": false, "guardian": "Aaron and Jill Finkeistein"] as [String : Any]
var player13 = ["name": "Diego Soto", "height": 41, "experienced": true, "guardian": "Robin and Sarika Soto"] as [String : Any]
var player14 = ["name": "Chioe Alaska", "height": 47, "experienced": false, "guardian": "David and Jamie Alaska"] as [String : Any]
var player15 = ["name": "Arnoid Willis", "height": 43, "experienced": false, "guardian": "Claire Willis"] as [String : Any]
var player16 = ["name": "Phillip Helm", "height": 44, "experienced": true, "guardian": "Thomas Helm and Eva Jones"] as [String : Any]
var player17 = ["name": "Les Clay", "height": 42, "experienced": true, "guardian": "Wynonna Brown"] as [String : Any]
var player18 = ["name": "Herschel Krustofski", "height": 45, "experienced": true, "guardian": "Hyman and Rachel Krustofski"] as [String : Any]

// Create an array store all the player's infomation
var allPlayer: [[String: Any]] = [player1,player2,player3,player4,player5,player6,player7,player8,player9,player10,player11,player12,player13,player14,player15,player16,player17,player18]

// create team's number
let teamNo = 3

// Create two array to store the player has experience and not have experience
var hasExperiencedPlayer: [[String: Any]] = []
var hasExperiencedPlayerGroupOne: [[String: Any]] = []
var hasExperiencedPlayerGroupTwo: [[String: Any]] = []
var hasExperiencedPlayerGroupThree: [[String: Any]] = []
var hasNoExperiencedPlayer: [[String: Any]] = []
var hasNoExperiencedPlayerGroupOne: [[String: Any]] = []
var hasNoExperiencedPlayerGroupTwo: [[String: Any]] = []
var hasNoExperiencedPlayerGroupThree: [[String: Any]] = []
// Divide player into two group
for player in allPlayer {
    if ((player["experienced"]!) as! Bool == true) {
        hasExperiencedPlayer.append(player)
    }else {
        hasNoExperiencedPlayer.append(player)
    }
}
// create each team's player count
var sharksTeamPlayerNo = 0
var dragonsTeamPlayerNo = 0
var raptorsTeamPlayerNo = 0
// create each team array
var sharksTeam: [[String: Any]] = []
var dragonsTeam: [[String: Any]] = []
var raptorsTeam: [[String: Any]] = []
// assign hasExperiencedPlayer to each team
for var index in 0..<hasExperiencedPlayer.count {
    if index < hasExperiencedPlayer.count / teamNo {
        sharksTeam.append(hasExperiencedPlayer[index])
    }else if index < hasExperiencedPlayer.count / teamNo + teamNo {
        dragonsTeam.append(hasExperiencedPlayer[index])
    }else if index < hasExperiencedPlayer.count / teamNo + teamNo + teamNo {
        raptorsTeam.append(hasExperiencedPlayer[index])
    }
}
// assign hasNoExperiencedPlayer to each team
for var index in 0..<hasNoExperiencedPlayer.count {
    if index < hasNoExperiencedPlayer.count / teamNo {
        sharksTeam.append(hasNoExperiencedPlayer[index])
    }else if index < hasNoExperiencedPlayer.count / teamNo + teamNo {
        dragonsTeam.append(hasNoExperiencedPlayer[index])
    }else if index < hasNoExperiencedPlayer.count / teamNo + teamNo + teamNo {
        raptorsTeam.append(hasNoExperiencedPlayer[index])
    }
}
// print dragonsPlayer info
for dragonsPlayer in dragonsTeam {
    print("To ", terminator: "")
    print(dragonsPlayer["guardian"]!)
    print(dragonsPlayer["name"]!, terminator: "")
    print("is in team Dragons - practice on March 17, 1pm ")
    
}
// print sharksPlayer info
for sharksPlayer in sharksTeam {
    print("To ", terminator: "")
    print(sharksPlayer["guardian"]!)
    print(sharksPlayer["name"]!, terminator: "")
    print("is in team Sharks - practice on March 17, 3pm ")
    
}
// print raptorsPlayer info
for raptorsPlayer in raptorsTeam {
    print("To ", terminator: "")
    print(raptorsPlayer["guardian"]!)
    print(raptorsPlayer["name"]!, terminator: "")
    print("is in team Raptors - practice on March 18, 1pm ")
    
}













