import Foundation

final class NewsService {

    func fetchNews() async throws -> [News] {

        let url = URL(
            string: "https://rsshub.rss3.workers.dev/telegram/channel/rugbyrussian"
        )!

        let (data, response) = try await URLSession.shared.data(
            from: url
        )

        guard let http = response as? HTTPURLResponse,
              http.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }

        return NewsParser().parse(data)
    }
}
