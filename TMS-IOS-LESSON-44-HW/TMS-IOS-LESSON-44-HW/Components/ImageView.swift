import SwiftUI

struct ImageView: View {
    
    @State
    var imageUrl: String
    
    var body: some View {
        RemoteImage(url: imageUrl)
            .scaledToFill()
            .frame(width: 120, height: 75, alignment: .center)
            .cornerRadius(8)
    }
}

#Preview {
    ImageView(imageUrl: "https://images.unsplash.com/photo-1617854818583-09e7f077a156?q=80&w=3570&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
}
