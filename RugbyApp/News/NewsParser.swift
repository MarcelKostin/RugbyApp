import Foundation

final class NewsParser: NSObject, XMLParserDelegate {

    private var news: [News] = []

    private var currentElement = ""
    private var title = ""
    private var link = ""
    private var date = ""

    private var insideItem = false

    func parse(_ data: Data) -> [News] {
        news = []

        let parser = XMLParser(data: data)
        parser.delegate = self
        parser.parse()

        return news
    }

    func parser(
        _ parser: XMLParser,
        didStartElement elementName: String,
        namespaceURI: String?,
        qualifiedName qName: String?,
        attributes attributeDict: [String: String]
    ) {
        currentElement = elementName

        if elementName == "item" {
            insideItem = true
            title = ""
            link = ""
            date = ""
        }
    }

    func parser(
        _ parser: XMLParser,
        foundCharacters string: String
    ) {
        guard insideItem else { return }

        switch currentElement {
        case "title":
            title += string
        case "link":
            link += string
        case "pubDate":
            date += string
        default:
            break
        }
    }

    func parser(
        _ parser: XMLParser,
        didEndElement elementName: String,
        namespaceURI: String?,
        qualifiedName qName: String?
    ) {
        if elementName == "item" {
            news.append(
                News(
                    id: link,
                    title: title,
                    url: link,
                    date: date
                )
            )

            insideItem = false
        }

        currentElement = ""
    }
}
