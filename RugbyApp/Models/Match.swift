//
//  Match.swift
//  RugbyApp
//
//  Created by marcel on 18.11.2026.
//
import Foundation

struct Match: Identifiable {
    let id: UUID
    var homeTeam: Team
    var awayTeam: Team
    var homeScore: Int
    var awayScore: Int
    var date: Date
    var tournamentName: String
    
    init (id: UUID = UUID(), homeTeam: Team, awayTeam: Team, homeScore: Int,
          awayScore: Int, date: Date = .now, tournamentName: String) {
        self.id = id
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
        self.homeScore = homeScore
        self.awayScore = awayScore
        self.date = date
        self.tournamentName = tournamentName
    }
}
