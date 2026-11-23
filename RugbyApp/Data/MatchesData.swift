//
//  MatchesData.swift
//  RugbyApp
//
//  Created by marcel on 21.11.2026.
//
import Foundation

struct MatchesData {
    static let dinamo = Team(name: "ДИН", photo: "Dinamo")
    static let strela = Team(name: "СТР", photo: "Strela-Ak-Bars")
    static let enisej = Team(name: "ЕНИ", photo: "Enisej")
    static let krasnyjYar = Team(name: "КрЯР", photo: "Krasnyj-Yar")
    static let kuban = Team(name: "КУБ", photo: "Kuban")
    static let vva = Team(name: "ВВА", photo: "Vva")
    static let lipeck = Team(name: "ЛИП", photo: "Lipeck")
    static let rog = Team(name: "ТАГ", photo: "Rog")
    static let zastava = Team(name: "ЗАС", photo: "Zastava")
    static let shtorm = Team(name: "БШ", photo: "Shtorm")
    
    static let matches = [
        Match(homeTeam: dinamo,
              awayTeam: strela,
              homeScore: 30,
              awayScore: 24,
              date: .now,
              tournament: "Чемпионат России по Регби-7"),
        Match(homeTeam: enisej,
              awayTeam: krasnyjYar,
              homeScore: 0,
              awayScore: 20,
              date: .now,
              tournament: "Чемпионат России по Регби-7"),
        Match(homeTeam: kuban,
              awayTeam: vva,
              homeScore: 10,
              awayScore: 10,
              date: .now,
              tournament: "Чемпионат России по Регби-7"),
        Match(homeTeam: lipeck,
              awayTeam: zastava,
              homeScore: 5,
              awayScore: 33,
              date: .now,
              tournament: "Чемпионат России по Регби-7"),
        Match(homeTeam: rog,
              awayTeam: shtorm,
              homeScore: 12,
              awayScore: 5,
              date: .now,
              tournament: "Чемпионат России по Регби-7"),
    ]
}
