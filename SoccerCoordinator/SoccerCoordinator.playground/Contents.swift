//: Second Version

import UIKit

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
let playerNumber = 18
var playerArray: [[String: Any]] = [player1,player2,player3,player4,player5,player6,player7,player8,player9,player10,player11,player12,player13,player14,player15,player16,player17,player18]
var isExperiencedPlayer = 0
var averageExperiencedPlayers = 0
for player in playerArray {
    if (player["experienced"]! as! Bool != false) {
        isExperiencedPlayer += 1
    }
}
averageExperiencedPlayers = isExperiencedPlayer / 3
var DragonsExpPlayer = 0
var everyTeamPlayer = playerNumber / 3
var DragonsAllPlayer = 0
var DragonsPlayersArray: [[String: Any]] = []
var SharksExpPlayer = 0
var SharksAllPlayer = 0
var SharksPlayersArray: [[String: Any]] = []
var RaptorsExpPlayer = 0
var RaptorsAllPlayer = 0
var RaptorsPlayersArray: [[String: Any]] = []

for playerIndex in 0..<playerArray.count {
    if (DragonsExpPlayer < averageExperiencedPlayers && playerArray[playerIndex]["experienced"]! as! Bool == true) {
        DragonsPlayersArray.append(playerArray[playerIndex])
        
        DragonsExpPlayer += 1
        DragonsAllPlayer += 1
    }else if (SharksExpPlayer < averageExperiencedPlayers && playerArray[playerIndex]["experienced"]! as! Bool == true) {
        SharksPlayersArray.append(playerArray[playerIndex])
        SharksExpPlayer += 1
        SharksAllPlayer += 1
    }else if (RaptorsExpPlayer < averageExperiencedPlayers && playerArray[playerIndex]["experienced"]! as! Bool == true) {
        RaptorsPlayersArray.append(playerArray[playerIndex])
        RaptorsExpPlayer += 1
        RaptorsAllPlayer += 1
    }
    if (DragonsAllPlayer < everyTeamPlayer && playerArray[playerIndex]["experienced"]! as! Bool == false) {
        DragonsPlayersArray.append(playerArray[playerIndex])
        DragonsAllPlayer += 1
    } else if (SharksAllPlayer < everyTeamPlayer && playerArray[playerIndex]["experienced"]! as! Bool == false) {
        SharksPlayersArray.append(playerArray[playerIndex])
        SharksAllPlayer += 1
    } else if (RaptorsAllPlayer < everyTeamPlayer && playerArray[playerIndex]["experienced"]! as! Bool == false) {
        RaptorsPlayersArray.append(playerArray[playerIndex])
        RaptorsAllPlayer += 1
    }
}
for dragonsPlayer in DragonsPlayersArray {
    print("To ", terminator: "")
    print(dragonsPlayer["guardian"]!)
    print(dragonsPlayer["name"]!, terminator: "")
    print("is in team Dragons - practice on March 17, 1pm ")
    
}
for sharksPlayer in SharksPlayersArray {
    print("To ", terminator: "")
    print(sharksPlayer["guardian"]!)
    print(sharksPlayer["name"]!, terminator: "")
    print("is in team Sharks - practice on March 17, 3pm ")
    
}
for raptorsPlayer in RaptorsPlayersArray {
    print("To ", terminator: "")
    print(raptorsPlayer["guardian"]!)
    print(raptorsPlayer["name"]!, terminator: "")
    print("is in team Raptors - practice on March 18, 1pm ")
    
}



































