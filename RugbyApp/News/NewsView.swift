
import SwiftUI

struct NewsView: View {

    @State private var news: [News] = []

    private let service = NewsService()

    var body: some View {

        NavigationStack {
            List(news) { item in

                VStack(alignment: .leading, spacing: 8) {

                    Text(item.title)
                        .font(.headline)
                        .foregroundStyle(.white)

//                    Text(item.date)
//                        .font(.caption)
//                        .foregroundStyle(.white.opacity(0.6))

                    if let url = URL(string: item.url) {
                        Link("Открыть в Telegram", destination: url)
                    }
                }
                .padding(.vertical, 5)
                .listRowBackground(Color.clear)
            }
            .scrollContentBackground(.hidden)
            .background {
                Color(red: 0.05, green: 0.1, blue: 0.25)
                    .ignoresSafeArea()
            }
            .navigationTitle("Новости")
            .toolbarColorScheme(.dark, for: .navigationBar)
            .task {
                do {
                    news = try await service.fetchNews()
                    print("Загружено новостей:", news.count)
                } catch {
                    print("Ошибка загрузки:", error)
                }
            }
        }
    }
}
