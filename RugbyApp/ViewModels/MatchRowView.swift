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
        VStack(spacing: 0) {
            HStack {
                Text("2 тур") // В будущем добавите в модель Match
                    .font(.caption)
                    .foregroundStyle(.white.opacity(0.7))
                
                Spacer()
                
                Text("20.03 | 17:00") // В будущем берем из match.date
                    .font(.caption)
                    .foregroundStyle(.white.opacity(0.7))
            }
            .padding(.horizontal, 12)
            .padding(.bottom, 8)
            HStack {
                HStack {
                    Image(match.homeTeam.photo)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Text(match.homeTeam.name)
                        .foregroundStyle(.white)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Text("\(match.homeScore) : \(match.awayScore)")
                    .foregroundStyle(.white)
                    .font(.system(size: 24, weight: .semibold))
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
            
            HStack(spacing: 6) {
                Image(systemName: "trophy")
                    .font(.system(size: 12, weight: .light))
                    .opacity(0.6)
                Text("\(match.tournament)")
                    .backgroundStyle(.gray)
                    .font(.system(size: 12, weight: .light))
                    .opacity(0.6)
            }
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
