import SwiftUI

struct PostsList: View {
    
    @ObservedObject
    var vm: PostsViewModel
    
    var body: some View {
        if vm.posts.isEmpty {
            Text("List is empty now...")
                .foregroundColor(.gray)
                .navigationTitle("Posts")
        } else {
            List(vm.posts, id: \.id) { p in
                Post(post: p)
            }
            .navigationTitle("Posts")
        }
        
    }
}

#Preview {
    PostsList(vm: PostsViewModel())
}
