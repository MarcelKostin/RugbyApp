import SwiftUI

struct MatchListView: View {
    let matches: [Match]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.05, green: 0.1, blue: 0.25)
                    .ignoresSafeArea()
                ScrollView {
                    VStack(spacing: 0) {
                        ForEach(matches) { match in
                            MatchRowView(match: match)
                                .padding(.horizontal, 2)
                        }
                    }
                }
            }
            .navigationTitle("Результаты")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color(red: 0.05, green: 0.1, blue: 0.25), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
