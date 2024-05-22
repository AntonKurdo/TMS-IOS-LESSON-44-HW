import Foundation

struct PostModel: Codable {
    let id: UUID
    let title: String
    let image: String
    let percentage: CGFloat
    let stars: Int
}

struct PostsResponse: Codable {
    let posts: [Post]
}
