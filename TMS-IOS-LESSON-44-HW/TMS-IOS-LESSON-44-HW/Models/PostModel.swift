import Foundation

struct PostModel: Codable {
    let id: Int
    let title: String
    let text: String
    let image: String
    let stars: Int
}

struct PostsResponse: Codable {
    let posts: [PostModel]
}
