//
//  Player.swift
//  swift-2048
//
//  Created by iwen
//

import Foundation
import UIKit

struct Player: Codable {
    var name: String
    var score: String
    
    static func readPlayersFromFile() -> [Player]? {
        let propertyDecoder = PropertyListDecoder()
        if let data = UserDefaults.standard.data(forKey: "players"), let players = try? propertyDecoder.decode([Player].self, from: data) {
            return players
        } else {
            return nil
        }
    }
    
    static func saveToFile(players: [Player]) {
        let propertyEncoder = PropertyListEncoder()
        if let data = try? propertyEncoder.encode(players) {
            UserDefaults.standard.set(data, forKey: "players")
        }
    }
    
}
