import SwiftUI

struct MatchListView: View {
    let matches: [Match]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.05, green: 0.1, blue: 0.25)
                    .ignoresSafeArea()
                List {
                    ForEach(matches) { match in
                        MatchRowView(match: match)
                            .listRowBackground(Color.clear)
                            .listRowInsets(EdgeInsets(top: 2, leading: 8, bottom: 2, trailing: 8))
                    }
                }
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
                .environment(\.defaultMinListRowHeight, 0)
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
