import Foundation

struct PostModel: Codable {
    let id: Int
    let title: String
    let text: String
    let image: String
    let stars: Int
    
    private enum CodingKeys : String, CodingKey {
        case id, title, text, image, stars
    }
}

struct PostsResponse: Codable {
    let posts: [PostModel]
}
