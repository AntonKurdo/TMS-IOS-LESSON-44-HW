import RealmSwift

class PostModel_Realm: Object {
    @Persisted(primaryKey: true) var id: Int
    @Persisted var title: String
    @Persisted var text: String
    @Persisted var image: String
    @Persisted var stars: Int
    
    convenience init(post: PostModel) {
        self.init()
        self.id = post.id
        self.title = post.title
        self.text = post.text
        self.image = post.image
        self.stars = post.stars
    }
}
