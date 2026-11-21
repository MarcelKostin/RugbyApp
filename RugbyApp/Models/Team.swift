//
//  Team.swift
//  RugbyApp
//
//  Created by marcel on 18.11.2026.
//
import Foundation

struct Team: Identifiable {
    let id: UUID
    let name: String
    let photo: String
    
    init(id: UUID = UUID(), name: String, photo: String) {
        self.id = id
        self.name = name
        self.photo = photo
    }
    
}
