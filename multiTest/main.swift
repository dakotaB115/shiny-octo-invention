//
//  main.swift
//  multiTest
//
//  Created by Dakota Brown on 9/8/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import Foundation

class game {
    var name: String
    var genre: String
    
    init(name: String, genre: String) {
        self.name = name
        self.genre = genre
    }
}

var games: [game] = []
var isActive = true

func addNewGame() {
    
    print("Game name")
    let gameName = String(readLine()!)
    print("Game genre")
    let gameGenre = String(readLine()!)
    
    games.append(game(name: gameName, genre: gameGenre))
    
    dump(games)
}

func quit() {
    print("Goodbye")
    isActive = false
}

while isActive == true {
    print("Enter command: addNewGame or quit")
    var command = String(readLine()!.uppercased())
    
    if command == "ADDNEWGAME" {
        addNewGame()
    } else if command == "QUIT" {
        quit()
    } else if command != "ADDNEWGAME" || command != "QUIT" {
        print("Enter a valid command: addNewGame or quit")
        command = String(readLine()!.uppercased())
    }
    
}


