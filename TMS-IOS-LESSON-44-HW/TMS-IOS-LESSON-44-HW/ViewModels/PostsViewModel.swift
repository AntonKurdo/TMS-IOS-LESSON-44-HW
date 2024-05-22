import Foundation

class ViewModel: ObservableObject {
    @Published
    var posts: [PostModel] = []
    
    init() {
        posts = POSTS_MOCK
    }
    
}
