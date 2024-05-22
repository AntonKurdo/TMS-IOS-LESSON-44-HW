import SwiftUI

struct Post: View {
    
    @State
    var post: PostModel
    
    var body: some View {
        HStack {
            ImageView(imageUrl: post.image)
            Spacer()
            VStack {
                Text(post.title)
                    .font(.subheadline)
                    .fontWeight(.bold)
                Text(post.text)
                    .font(.caption)
                    .lineLimit(3)
                Rating(rating: post.stars)
                
            }
            Spacer()
        }.padding(.vertical)
    }
}

#Preview {
    Post(post: POSTS_MOCK[0])
}
