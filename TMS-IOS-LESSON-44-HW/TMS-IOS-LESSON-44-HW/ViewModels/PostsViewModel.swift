import Foundation
import SwiftUI

class PostsViewModel: ObservableObject {
    @Published
    var posts: [PostModel] = []
    
    private var api = APIService()
    
    init() {
        api.getPosts(completionHandler: { [weak self] items in
            DispatchQueue.main.async {
                self?.posts = items
//                self?.posts = POSTS_MOCK
            }
        }, errorHandler: { error in
            print(error)
        })

    }
    
}
