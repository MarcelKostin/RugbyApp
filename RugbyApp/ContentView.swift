//
//  ContentView.swift
//  RugbyApp
//
//  Created by marcel on 18.11.2026.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color(red: 0.05, green: 0.1, blue: 0.25)
                .ignoresSafeArea()
            MatchListView(matches: MatchesData.matches)
        }
    }
}

#Preview {
    ContentView()
}
