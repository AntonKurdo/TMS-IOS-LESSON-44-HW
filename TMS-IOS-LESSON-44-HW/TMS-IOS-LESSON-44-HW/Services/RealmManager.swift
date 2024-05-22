import RealmSwift
import Foundation

class RealmManager {
    static let shared = RealmManager()
    
    var realm: Realm?
    
    private init() {
        realm = try! Realm()
    }
    
    func fetchAllCachedPosts() -> [PostModel]? {
        var posts: [PostModel] = []
        guard let realm else {return nil}
        let result = realm.objects(PostModel_Realm.self)
        result.toArray(type: PostModel_Realm.self).forEach { p in
            posts.append(PostModel(id: p.id, title: p.title, text: p.text, image: p.image, stars: p.stars))
        }
        return posts
    }
    
    func addPost(rawPost: PostModel, completion: (() -> ())) {
        guard let realm else {return}
        let post = PostModel_Realm(post: rawPost)
        
        try! realm.write {
            realm.add(post)
        }
        
        completion()
    }
}

extension Results {
    func toArray<T>(type: T.Type) -> [T] {
        return compactMap { $0 as? T }
    }
}
