import SwiftUI

struct PostsList: View {
    
    @ObservedObject
    var vm: PostsViewModel
    
    var body: some View {
        List(vm.posts, id: \.id) { p in
            Post(post: p)
        }
        .navigationTitle("Posts")
    }
}

#Preview {
    PostsList(vm: PostsViewModel())
}
