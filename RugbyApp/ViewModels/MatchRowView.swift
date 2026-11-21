//
//  ContentView.swift
//  RugbyApp
//
//  Created by marcel on 18.11.2026.
//

import SwiftUI

struct MatchRowView: View {
    let match: Match
    
    var body: some View {
        HStack {
            HStack {
                ZStack {
                    Image(match.homeTeam.photo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        //.background(Color.white)//как сделать ячейки клубов?
                }
                Text(match.homeTeam.name)
                    .foregroundStyle(.white)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Text("\(match.homeScore) : \(match.awayScore)")
                .foregroundStyle(.white)
                .font(.system(size: 20, weight: .semibold))
                .multilineTextAlignment(.center)
                .frame(width: 80)
            HStack {
                Text(match.awayTeam.name)
                    .foregroundStyle(.white)
                Image(match.awayTeam.photo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding()
        .background(Color.white.opacity(0.1))
        .cornerRadius(12)
        .frame(maxWidth: .infinity)
        Spacer()
        
    }
}

#Preview {
    ContentView()
}
