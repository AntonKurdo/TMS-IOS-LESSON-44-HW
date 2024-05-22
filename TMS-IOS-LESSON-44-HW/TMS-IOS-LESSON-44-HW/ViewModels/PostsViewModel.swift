import Foundation
import SwiftUI

class PostsViewModel: ObservableObject {
    @Published
    var posts: [PostModel] = []
    
    private var api = APIService()
    
    private let realmManager =  RealmManager.shared
    
    init() {
        initialFetch()
    }
    
    private func initialFetch() {
        let cachedPosts = realmManager.fetchAllCachedPosts() ?? []
        
        posts = cachedPosts
        
        api.getPosts(completionHandler: { items in
            items.forEach { fetchedPost in
                let isAlreadyCached = cachedPosts.contains { cachedPost in
                    cachedPost.id == fetchedPost.id
                }
                
                if !isAlreadyCached {
                    DispatchQueue.main.async {
                        self.realmManager.addPost(rawPost: fetchedPost) {
                            print("Caching for post with ID:\(fetchedPost.id) is done")
                        }
                        self.posts.append(fetchedPost)
                    }
                }
            }
            
        }, errorHandler: { error in
            print(error)
        })
    }
    
}
